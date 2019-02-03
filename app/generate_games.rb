require_relative "./aaf"
require "pry"

ALL_PLAYERS = AAF::Client.parse <<-'GRAPHQL'
  query {
    playersConnection(first: 5000) {
      nodes {
        id
        avatar {
          id
          url
        }
        name {
          familyName
          givenName
          suffix
        }
        jerseyNumber
        position
        team {
          id
          abbreviation
        }
      }
    }
  }
GRAPHQL

ALL_GAMES = AAF::Client.parse <<-'GRAPHQL'
  query {
    gamesConnection {
      nodes {
        id
        status {
          phase
          awayTeamPoints
          homeTeamPoints
        }
        namedTimeRange {
          name
          time
        }
        homeTeam {
          name
          abbreviation
        }
        awayTeam {
          name
          abbreviation
        }
        playsConnection(first: 5000) {
          nodes {
            description
            hasPenalty
            yardLine
            yardLineTeam
            gameClockSeconds
            down
            yardsToGo
            quarter
            possession
          }
        }
      }
    }
  }
GRAPHQL

games = []
players = []

def player_id(node)
  "#{node.jersey_number}-#{node.name.given_name.chars.first}.#{node.name.family_name}"
end

def add_player(players, node)
  players << {
    guid: node.id,
    name: node.name.given_name + " " + node.name.family_name,
    position: node.position,
    number: node.jersey_number,
    team: node.team&.abbreviation,
    id: player_id(node),
    short_name: node.name.given_name.chars.first + ". " + node.name.family_name,
  }
end

result = AAF::Client.query(ALL_PLAYERS)
result.data.players_connection.nodes.each do |node|
  add_player(players, node)
end

result = AAF::Client.query(ALL_GAMES)

def generate_slug(game)
  raw = "#{game.named_time_range.name}-#{game.home_team.abbreviation}-#{game.away_team.abbreviation}"
  raw.downcase.gsub(/\s/, '-')
end

def generate_title(game)
  "#{game.home_team.name} vs #{game.away_team.name} - #{game.named_time_range.name}"
end

def add_game(games, node)
  home = node.home_team.name
  away = node.away_team.name
  home_score = node.status.home_team_points
  away_score = node.status.away_team_points

  game = {
    slug: generate_slug(node),
    title: generate_title(node),
    home_team: node.home_team.name,
    home_abbr: node.home_team.abbreviation,
    home_score: node.status.home_team_points,
    away_team: node.away_team.name,
    away_abbr: node.away_team.abbreviation,
    away_score: node.status.away_team_points,
    week: node.named_time_range.name,
    time: node.named_time_range.time,
    plays: [],
    home_stats: [],
    away_stats: [],
  }

  games << game
  game
end

def yard_side(game, node)
  if node.yard_line_team == "HOME_TEAM"
    game[:home_abbr]
  else
    game[:away_abbr]
  end
end

def find_by_pid(players, pid)
  # binding.pry if pid.include? "Walker"
  players.select{|p| p[:id].gsub(",", "").strip == pid.gsub(",", "").strip}
end

def get_yardage(desc)
  yardage = /for (-?\d{1,2}) yard/mi
  matches = yardage.match(desc)
  if matches.nil? || matches.size < 2
    0
  else
    matches[1].to_i
  end
end

def clean_up(description)
  description
    .gsub("20O", "20")
end

def parse_play_description!(all_players, play)
  desc = clean_up(play[:description])

  run_play = /left|right/mi
  pass_play = /pass/mi
  td_play = /TOUCHDOWN/m
  conv_play = /CONVERSION ATTEMPT/m
  conv_success = /ATTEMPT SUCCEEDS/m
  interception = /INTERCEPTED/m
  lost_fumble = /RECOVERED/m

  incomplete = /pass incomplete/mi
  pid_format = /(\d{1,2}-[a-zA-Z\.-]+[a-zA-Z],?( Jr.)?( Sr.)?( I{2,})?( IV)?)/m

  pids = desc.scan(pid_format)
  players = pids.map{|p| find_by_pid(all_players, p.first)}.flatten.compact

  play.merge!({
    touchdown: desc.match?(td_play),
    conversion_attempt: desc.match?(conv_play),
    conversion_success: desc.match?(conv_success),
    yardage: get_yardage(desc),
    interception: desc.match?(interception),
    lost_fumble: desc.match?(lost_fumble),
    turnover: desc.match?(interception) || desc.match?(lost_fumble),
  })

  if desc.match?(run_play) && !desc.match?(pass_play)
    play.merge!({
      play_type: "Rush",
      goal_line: play[:yard_line] <= 10,
      rusher: players.first,
    })
  elsif desc.match?(pass_play)
    play.merge!({
      play_type: "Pass",
      passer: players.first,
      receiver: players[1],
      completion: !desc.match?(incomplete),
    })
  end
end

def nullified?(play)
  play.has_penalty && play.description.include?("No Play")
end

def add_plays(game, players, node)
  node.plays_connection.nodes.each do |node|
    play = {
      description: node.description,
      down: node.down,
      distance: node.yards_to_go,
      yard_line: node.yard_line,
      yard_side: yard_side(game, node),
      nullified: node.has_penalty,
    }

    parse_play_description!(players, play)

    game[:plays] << play
  end
end

def player_involved?(play, pid)
  if play[:rusher] && play[:rusher][:id] == pid
    return :rusher
  end

  if play[:passer] && play[:passer][:id] == pid
    return :passer
  end

  if play[:receiver] && play[:receiver][:id] == pid
    return :receiver
  end

  false
end

def stats_for_player(game, player)
  stats = {
    player: player,
    pass_attempts: 0,
    pass_complete: 0,
    pass_yards: 0,
    pass_td: 0,
    rush_attempts: 0,
    rush_yards: 0,
    rush_td: 0,
    targets: 0,
    catches: 0,
    receiving_yards: 0,
    receiving_td: 0,
    fumbles: 0,
    interceptions: 0,
  }

  any_stats = false

  game[:plays].each do |play|
    next if play[:nullified]

    role = player_involved?(play, player[:id])
    next unless role

    if play[:play_type] == "Pass"
      if role == :passer
        any_stats = true

        stats[:pass_attempts] += 1
        stats[:pass_complete] += 1 if play[:completion]
        stats[:pass_yards] += play[:yardage] unless play[:turnover]
        stats[:pass_td] += 1 if play[:touchdown] && !play[:turnover]
        stats[:interceptions] += 1 if play[:interception]
      else
        any_stats = true

        stats[:targets] += 1
        stats[:catches] += 1 if play[:completion]
        stats[:receiving_yards] += play[:yardage] unless play[:turnover]
        stats[:receiving_td] += 1 if play[:touchdown] && !play[:turnover]
      end
    end

    if play[:play_type] == "Rush"
      if role == :rusher
        any_stats = true

        stats[:rush_attempts] += 1
        stats[:rush_yards] += play[:yardage] unless play[:turnover]
        stats[:rush_td] +=1 if play[:touchdown] && !play[:turnover]
        stats[:fumbles] += 1 if play[:lost_fumble]
      end
    end
  end

  return stats if any_stats
end

def add_stats(game, players, team, is_home)
  key = is_home ? :home_stats : :away_stats

  players.each do |player|
    next if player[:team] != team.abbreviation

    game[key] << stats_for_player(game, player)
  end

  game[key].flatten!
  game[key].compact!
end

result.data.games_connection.nodes.each do |node|
  status = node.status&.phase

  next unless status == "COMPLETE"

  game = add_game(games, node)
  add_plays(game, players, node)

  add_stats(game, players, node.home_team, true)
  add_stats(game, players, node.away_team, false)
end

path = File.join(File.dirname(__FILE__), '../_data', 'games.json')
File.write(path, JSON.pretty_generate({
  meta: {
    last_modified: Time.now,
  },
  games: games.reverse,
}))
