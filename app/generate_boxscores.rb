require_relative "./aaf"
require "pry"

ALL_GAMES = AAF::Client.parse <<-'GRAPHQL'
{
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
      homeTeamEdge {
        ...teamStats
      }
      homeTeam {
        name
        abbreviation
      }
      awayTeamEdge {
        ...teamStats
      }
      awayTeam {
        name
        abbreviation
      }
      playsConnection(first: 500) {
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
      playersConnection(first: 500) {
        edges {
          node {
            id
            name{
              familyName
              givenName
            }
            position
            jerseyNumber
          }
          team {
            name
            abbreviation
          }
          stats {
            passesAttempted
            passesCompleted
            passingYards
            passesIntercepted
            passingTouchdowns
            rushesAttempted
            rushingYards
            rushingTouchdowns
            rushingLongestGain
            fumbles
            receptions
            receivingYards
            receivingTouchdowns
            receivingLongestGain
            timesSacked
            twoPointConversionPassReceptionsGood
            twoPointConversionPassesGood
            twoPointConversionRushesGood
            assistedTackles
            tackleAssists
            tackles
            tacklesForLoss
            opponentFumblesRecovered
            opponentFumblesForced
            opposingFieldGoalsBlocked
            passDefenses
            sacks
            quarterbackHits
            interceptionReturns
            fieldGoalsAttempted
            fieldGoalsBlocked
            fieldGoalsMade
            fieldGoalsLongestMade
            passTargets
            yardsAfterCatches
            puntsAttempted
            puntingYards
            puntingYardsNet
            puntingLongestKick
          }
        }
      }
    }
  }
}

fragment teamStats on GameTeamEdge {
    stats {
      firstDownsByPassing
      firstDownsByRushing
      firstDownsByPenalty
      thirdDownsUnconverted
      thirdDownsConverted
      fourthDownsUnconverted
      fourthDownsConverted
      passingPlays
      rushingPlays
      averageYardsPerPlay
      passingYardsNet
      passesCompleted
      passesAttempted
      passesIntercepted
      timesSacked
      sackYardsLost
      rushingYardsNet
      turnovers
      fumbles
      timeOfPossessionMilliseconds
      twoPointConversionsAttempted
      twoPointConversionsCompleted
      twoPointConversionCompletionPercentage
    }
  }
GRAPHQL

boxscores = []

def generate_slug(game)
  raw = "#{game.named_time_range.name}-#{game.home_team.abbreviation}-#{game.away_team.abbreviation}"
  raw.downcase.gsub(/\s/, '-')
end

def generate_title(game)
  "#{game.home_team.name} vs #{game.away_team.name} - #{game.named_time_range.name}"
end

def possessing_team(node, game)
  if node.possession == "HOME_TEAM"
    game.home_team.abbreviation
  else
    game.away_team.abbreviation
  end
end

def yard_side(node, game)
  if node.yard_line_team == "HOME_TEAM"
    game.home_team.abbreviation
  else
    game.away_team.abbreviation
  end
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

def ordinal(n)
  ending = case n % 100
           when 11, 12, 13 then 'th'
           else
             case n % 10
             when 1 then 'st'
             when 2 then 'nd'
             when 3 then 'rd'
             else 'th'
             end
           end

  "#{n}#{ending}"
end

def find_by_pid(players, pid)
  players.select{|p| p[:id].gsub(",", "").strip == pid.gsub(",", "").strip}
end

def clean_issues(description)
  description.gsub("41-L.Perkins", "24-L.Perkins")
    .gsub("19-C.Johnson", "12-C.Johnson")
    .gsub("20O-R.Green", "20-R.Green")
end

def extract_play_by_play(plays, game, all_players)
  run_play = /left|right/mi
  pass_play = /pass/mi
  td_play = /TOUCHDOWN/m
  conv_play = /CONVERSION ATTEMPT/m
  conv_success = /ATTEMPT SUCCEEDS/m
  interception = /INTERCEPTED/m
  lost_fumble = /RECOVERED/m
  field_goal =/field goal is GOOD/m

  incomplete = /pass incomplete/mi
  pid_format = /(\d{1,2}-[a-zA-Z\.-]+[a-zA-Z],?( Jr.)?( Sr.)?( I{2,})?( IV)?)/m

  plays.map do |node|
    desc = clean_issues(node.description)
    pids = desc.scan(pid_format)
    players = pids.map{|p| find_by_pid(all_players, p.first)}.flatten.compact.uniq

    play = {
      description: desc,
      down: ordinal(node.down),
      distance: node.yards_to_go.to_i,
      possession: possessing_team(node, game),
      quarter: node.quarter,
      yard_line: node.yard_line,
      yard_side: yard_side(node, game),
      nullified: node.has_penalty && desc.include?("No Play") || desc.include?("NULLIFIED"),
      touchdown: desc.match?(td_play),
      conversion_attempt: desc.match?(conv_play),
      conversion_success: desc.match?(conv_success),
      yardage: get_yardage(desc),
      interception: desc.match?(interception),
      field_goal_made: desc.match?(field_goal),
      lost_fumble: desc.match?(lost_fumble),
      turnover: desc.match?(interception) || desc.match?(lost_fumble),
    }

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
      })
    end

    play
  end
end

def valid_position?(position)
  [
    "QUARTERBACK",
    "RUNNING_BACK",
    "WIDE_RECEIVER",
    "TIGHT_END"
  ].include?(position)
end

def slug(name)
  name.given_name.downcase.strip.gsub(/[^a-z]/, '') + "-" +
    name.family_name.downcase.strip.gsub(/[^a-z]/, '')
end

def player_id(node)
  "#{node.jersey_number}-#{node.name.given_name.chars.first}.#{node.name.family_name}"
end

def extract_player_details(node, team)
  {
    guid: node.id,
    slug: slug(node.name),
    name: node.name.given_name + " " + node.name.family_name,
    position: node.position,
    number: node.jersey_number,
    team: team.abbreviation,
    id: player_id(node),
    short_name: node.name.given_name.chars.first + ". " + node.name.family_name,
  }
end

def extract_player_stats(edges, team_name, plays, week_num)
  stats = []
  last_player = nil

  edges.each do |edge|
    # next unless valid_position?(player.position)
    next unless edge.team.name == team_name
    next if last_player == edge.node.id

    player = extract_player_details(edge.node, edge.team)

    player_stats = {
      player: player,
      pass_attempts: edge.stats.passes_attempted,
      pass_complete: edge.stats.passes_completed,
      pass_yards: edge.stats.passing_yards,
      pass_td: edge.stats.passing_touchdowns,
      rush_attempts: edge.stats.rushes_attempted,
      rush_yards: edge.stats.rushing_yards,
      rush_long: edge.stats.rushing_longest_gain,
      rush_td: edge.stats.rushing_touchdowns,
      catches: edge.stats.receptions,
      receiving_yards: edge.stats.receiving_yards,
      receiving_long: edge.stats.receiving_longest_gain,
      receiving_td: edge.stats.receiving_touchdowns,
      fumbles: edge.stats.fumbles,
      interceptions: edge.stats.passes_intercepted,
      passing_2pc: edge.stats.two_point_conversion_passes_good,
      rushing_2pc: edge.stats.two_point_conversion_rushes_good,
      receiving_2pc: edge.stats.two_point_conversion_pass_receptions_good,
      times_sacked: edge.stats.times_sacked,
      assisted_tackles: edge.stats.assisted_tackles,
      tackle_assists: edge.stats.tackle_assists,
      tackles: edge.stats.tackles,
      tackles_for_loss: edge.stats.tackles_for_loss,
      solo_tackles: edge.stats.tackles - edge.stats.assisted_tackles,
      opponent_fumbles_recovered: edge.stats.opponent_fumbles_recovered,
      opponent_fumbles_forced: edge.stats.opponent_fumbles_forced,
      opposing_field_goals_blocked: edge.stats.opposing_field_goals_blocked,
      pass_defenses: edge.stats.pass_defenses,
      sacks: edge.stats.sacks,
      quarterback_hits: edge.stats.quarterback_hits,
      interception_returns: edge.stats.interception_returns,
      field_goals_attempted: edge.stats.field_goals_attempted,
      field_goals_blocked: edge.stats.field_goals_blocked,
      field_goals_made: edge.stats.field_goals_made,
      field_goals_longest_made: edge.stats.field_goals_longest_made,
      targets: edge.stats.pass_targets,
      week_num: week_num,
      yac: edge.stats.yards_after_catches,
      punts_attempted: edge.stats.punts_attempted,
      punting_yards: edge.stats.punting_yards,
      punting_yards_net: edge.stats.punting_yards_net,
      punting_longest_kick: edge.stats.punting_longest_kick,
    }

    player_stats = calculate_averages(player_stats)
    player_stats = get_fantasy_stats(player_stats)

    stats << player_stats
    last_player = edge.node.id
  end

  stats
end

def calculate_averages(stats)
  return nil unless stats

  if stats[:pass_attempts] > 0
    stats[:pass_ypa] = (stats[:pass_yards].to_f / stats[:pass_attempts]).round(1)
  else
    stats[:pass_ypa] = 0
  end

  if stats[:rush_attempts] > 0
    stats[:rush_ypc] = (stats[:rush_yards].to_f / stats[:rush_attempts]).round(1)
  else
    stats[:rush_ypc] = 0
  end

  stats
end

def get_fantasy_stats(stats)
  return nil unless stats
  stats[:salary] = "$-"
  stats[:fpts] = compute_fpts(stats)
  stats
end

def compute_fpts(stats)
  fpts = stats[:pass_yards] * 0.04 +
    stats[:pass_td] * 4 +
    stats[:rush_yards] * 0.1 +
    stats[:rush_td] * 6 +
    stats[:receiving_yards] * 0.1 +
    stats[:catches] * 1 +
    stats[:receiving_td] * 6 +
    stats[:passing_2pc] * 2 +
    stats[:rushing_2pc] * 2 +
    stats[:receiving_2pc] * 2

  if stats[:pass_yards] >= 400
    fpts += 4
  elsif stats[:pass_yards] >= 350
    fpts += 3
  elsif stats[:pass_yards] >= 300
    fpts += 2
  end

  if stats[:rush_yards] >= 200
    fpts += 4
  elsif stats[:rush_yards] >= 150
    fpts += 3
  elsif stats[:rush_yards] >= 100
    fpts += 2
  end

  if stats[:receiving_yards] >= 200
    fpts += 4
  elsif stats[:receiving_yards] >= 150
    fpts += 3
  elsif stats[:receiving_yards] >= 100
    fpts += 2
  end

  fpts.round(1)
end

def extract_team_stats(team, stats)
  base = stats.to_h.merge(team: team).transform_keys{|k| k.to_s.underscore}

  base["total_first_downs"] = base["first_downs_by_passing"] +
    base["first_downs_by_penalty"] + base["first_downs_by_rushing"]

  base["total_plays"] = base["passing_plays"] + base["rushing_plays"]
  base["total_yards"] = base["passing_yards_net"] + base["rushing_yards_net"]
  minutes = base["time_of_possession_milliseconds"] / 1000 / 60
  seconds = base["time_of_possession_milliseconds"] / 1000 % 60
  base["time_of_possession"] = "#{minutes}:#{seconds.to_s.rjust(2, '0')}"

  base["third_downs"] = base["third_downs_converted"] + base["third_downs_unconverted"]
  base["fourth_downs"] = base["fourth_downs_converted"] + base["fourth_downs_unconverted"]
  base["yards_per_pass"] = base["passing_yards_net"].to_f / base["passes_attempted"]
  base["yards_per_rush"] = base["rushing_yards_net"].to_f / base["rushing_plays"]

  base.transform_values{|v| if v.is_a? Numeric; v.round(2); else; v; end}
end

def extract_teams_stats(node)
  {
    home_team: extract_team_stats(node.home_team.abbreviation, node.home_team_edge.stats),
    away_team: extract_team_stats(node.away_team.abbreviation, node.away_team_edge.stats),
  }
end

def extract_players(edges)
  edges.map do |edge|
    extract_player_details(edge.node, edge.team)
  end
end

def generate_short_title(node)
  "#{node.away_team.abbreviation} @ #{node.home_team.abbreviation}"
end

def get_week_num(week)
  return 0 if week.include? "Pre"
  week.tr("^0-9", '').to_i
end

def quarter_scores(team, plays)
  scores = {
    1 => 0, 2 => 0, 3 => 0, 4 => 0, total: 0
  }

  plays.each do |play|
    next unless play[:possession] == team
    next if play[:nullified]

    if play[:touchdown]
      scores[play[:quarter]] += 6
      scores[:total] += 6
    elsif play[:conversion_success]
      scores[play[:quarter]] += 2
      scores[:total] += 2
    elsif play[:field_goal_made]
      scores[play[:quarter]] += 3
      scores[:total] += 3
    end
  end

  scores
end

def generate_quarter_scores(node, plays)
  {
    home_team: quarter_scores(node.home_team.abbreviation, plays),
    away_team: quarter_scores(node.away_team.abbreviation, plays),
  }
end

def generate_scoring_plays(node, plays)
  plays.select do |play|
    !play[:nullified] && (play[:touchdown] || play[:field_goal_made] || play[:conversion_success])
  end
end

def add_boxscore(node)
  home = node.home_team.name
  away = node.away_team.name

  players = extract_players(node.players_connection.edges)
  plays = extract_play_by_play(node.plays_connection.nodes, node, players)
  week_num = get_week_num(node.named_time_range.name)

  {
    guid: node.id,
    slug: generate_slug(node),
    title: generate_title(node),
    short_title: generate_short_title(node),
    home_team: home,
    home_abbr: node.home_team.abbreviation,
    home_score: node.status.home_team_points,
    away_team: away,
    away_abbr: node.away_team.abbreviation,
    away_score: node.status.away_team_points,
    week: node.named_time_range.name,
    time: node.named_time_range.time,
    play_by_play: plays,
    team_stats: extract_teams_stats(node),
    home_stats: extract_player_stats(node.players_connection.edges, home, plays, week_num),
    away_stats: extract_player_stats(node.players_connection.edges, away, plays, week_num),
    quarter_scores: generate_quarter_scores(node, plays),
    scoring_plays: generate_scoring_plays(node, plays),
  }
end

result = AAF::Client.query(ALL_GAMES)
result.data.games_connection.nodes.each do |node|
  status = node.status&.phase

  next unless status == "COMPLETE"

  boxscores << add_boxscore(node)
end

path = File.join(File.dirname(__FILE__), '../_data', 'boxscores.json')
File.write(path, JSON.pretty_generate({
  meta: {
    last_modified: Time.now,
  },
  boxscores: boxscores.reverse,
}))

path = File.join(File.dirname(__FILE__), '..', '_redirects.json')
redirects = {}
boxscores.each do |bs|
  redirects["/boxscores/#{bs[:guid]}"] = "/boxscores/#{bs[:slug]}"
end
File.write(path, JSON.pretty_generate(redirects))
