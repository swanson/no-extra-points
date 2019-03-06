require_relative "./aaf"
require "pry"
require "csv"
require "plissken"

$salaries = {}
Dir.glob("app/data/fanball-salaries/*.csv").each do |f|
  week = f.scan(/\d+/).first.to_i
  $salaries[week] = {}
  CSV.foreach(f, :headers => true) do |row|
    $salaries[week][row["id"]] = row["salary"].to_i
  end
end

ALL_PLAYERS = AAF::Client.parse <<-'GRAPHQL'
  query {
    playersConnection(first: 5000) {
      nodes {
        id
        rosterStatus
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
        platoon
        team {
          id
          abbreviation
          name
        }
        heightMillimeters
        weightGrams
        biography
        ncaaFBCareer {
          seasons {
            teams {
              nickname
              regionName
              stats {
                receptions
                receivingYards
                receivingTouchdowns
                tackles
                sacks
                interceptionReturns
                rushingYards
                rushesAttempted
                rushingTouchdowns
                passingYards
                passingTouchdowns
                passesIntercepted
              }
            }
            year
          }
        }
      }
    }
  }
GRAPHQL

players = []

def map_position(position)
  case position
  when "QUARTERBACK"
    "QB"
  when "RUNNING_BACK"
    "RB"
  when "WIDE_RECEIVER"
    "WR"
  when "TIGHT_END"
    "TE"
  when "DEFENSIVE_BACK"
    "DB"
  when "CORNERBACK"
    "CB"
  when "DEFENSIVE_LINE"
    "DL"
  when "DEFENSIVE_LINEMAN"
    "DL"
  when "DEFENSIVE_TACKLE"
    "DT"
  when "CENTER"
    "C"
  when "OFFENSIVE_TACKLE"
    "OT"
  when "KICKER"
    "K"
  when "LINEBACKER"
    "LB"
  when "LONG_SNAPPER"
    "LS"
  when "OFFENSIVE_GUARD"
    "OG"
  when "SAFETY"
    "S"
  when "DEFENSIVE_END"
    "DE"
  when "PUNTER"
    "P"
  when "OFFENSIVE_LINEMAN"
    "OL"
  when "STRONG_SAFETY"
    "SS"
  when "FREE_SAFETY"
    "FS"
  else
    throw "Unknown position: #{position}"
  end
end

def get_height(height_mm)
  return "-" unless height_mm
  inches = (height_mm * 0.0393701).round
  ft, inch = inches.divmod(12)
  "#{ft}\" #{inch}\'"
end

def get_weight(weight_g)
  return "-" unless weight_g
  (weight_g * 0.00220462).round
end

def get_status(status)
  case status
  when "RESERVE_NONFOOTBALL_INJURY",
      "RESERVE_OTHER_LEAGUE",
      "RESERVE_MILITARY",
      "WAIVER_REQUEST",
      "RIGHTS_LIST",
      "TERMINATION_OF_RIGHTS",
      "RESERVE_DID_NOT_REPORT",
      "RESERVE_NONFOOTBALL_ILLNESS",
      "RESERVE_SUSPENDED",
      "RESERVE_RETIRED",
      "RESERVE_TENDERED",
      "OTHER"
    "Inactive"
  when "RESERVE_INJURED"
    "IR"
  when "RESERVE_PHYSICALLY_UNABLE_TO_PLAY"
    "PUP"
  when "ACTIVE_LIST"
    "Active"
  when "FREE_AGENT_ALLOCATED", "FREE_AGENT_UNALLOCATED"
    "Free Agent"
  else
    "Unknown"
  end
end

def slug(name)
  name.given_name.downcase.strip.gsub(/[^a-z]/, '') + "-" +
    name.family_name.downcase.strip.gsub(/[^a-z]/, '')
end

def get_salary(stats)
  week_num = stats["week_num"].to_i
  week_sal = $salaries[week_num]
  return "-" unless week_sal
  week_sal[stats["player"]["guid"]] || "-"
end

def get_game_logs(player, boxscores)
  logs = []
  boxscores.each do |bs|
    ["home_stats", "away_stats"].each do |key|
      stats = bs[key].find{|s| s["player"]["guid"] == player.id}
      if stats
        logs << stats.merge(week: bs["week"], game_link: bs["slug"], game: bs["short_title"], salary: get_salary(stats))
      end
    end
  end
  logs
end

def compute_season_stats(logs, team_stats)
  totals = {}
  logs.each do |log|
    next if log["week_num"] < 1
    log.each do |k, v|
      next unless v.is_a? Numeric

      if k == "rush_long" || k == "receiving_long"
        if v >= (totals[k] || 0)
          totals[k] = v
        else
          totals[k] = totals[k] || 0
        end
      else
        totals[k] = 0 if totals[k].nil?
        totals[k] += v
        totals[k] = totals[k].round(1)
      end
    end
  end

  if totals["pass_attempts"] && totals["pass_attempts"] > 0
    totals["completion_percentage"] = ((totals["pass_complete"].to_f / totals["pass_attempts"].to_f) * 100).round(1)
    totals["pass_ypa"] = (totals["pass_yards"].to_f / totals["pass_attempts"].to_f).round(1)
  else
    totals["completion_percentage"] = 0
    totals["pass_ypa"] = 0
  end

  if totals["rush_attempts"] && totals["rush_attempts"] > 0
    totals["rush_ypc"] = (totals["rush_yards"].to_f / totals["rush_attempts"].to_f).round(1)
  else
    totals["rush_ypc"] = 0
  end

  if totals["targets"] && totals["targets"] > 0
    totals["average_depth_of_target"] = (totals["receiving_air_yards"].to_f / totals["targets"].to_f).round(1)
    totals["target_market_share"] = (totals["targets"].to_f / team_stats[:targets].to_f).round(2)
    totals["air_yards_market_share"] = (totals["receiving_air_yards"].to_f / team_stats[:air_yards].to_f).round(2)
    totals["wopr"] = (totals["target_market_share"] * 1.5 + totals["air_yards_market_share"] * 0.7).round(2)
  else
    totals["average_depth_of_target"] = 0
    totals["target_market_share"] = 0
    totals["air_yards_market_share"] = 0
    totals["wopr"] = 0
  end

  if totals["receiving_air_yards"] && totals["receiving_air_yards"] > 0
    totals["racr"] = (totals["receiving_yards"].to_f / totals["receiving_air_yards"]).round(1)
  else
    totals["racr"] = 0
  end

  totals
end

def add_player(players, node, boxscores, team_stats)
  logs = get_game_logs(node, boxscores)

  players << {
    guid: node.id,
    slug: slug(node.name),
    full_name: node.name.given_name + " " + node.name.family_name,
    position: map_position(node.position),
    avatar_url: node.avatar&.url,
    number: node.jersey_number || "0",
    team: node.team&.name,
    team_abbr: node.team&.abbreviation,
    short_name: node.name.given_name.chars.first + ". " + node.name.family_name,
    last_name: node.name.family_name,
    first_name: node.name.given_name,
    height: get_height(node.height_millimeters),
    weight: get_weight(node.weight_grams),
    status: get_status(node.roster_status),
    starting: false,
    game_logs: logs,
    season_stats: compute_season_stats(logs, team_stats[node.team&.abbreviation.to_sym]),
    platoon: node.platoon,
    biography: node.biography,
    college_history: (node.ncaa_fb_career&.seasons || []).map{|s| {
      year: s.year,
      teams: s.teams.map{|t|
        {
          name: t.region_name + " " + t.nickname,
          stats: t.stats.to_h.dup.to_snake_keys
        }
      }
    }},
  }
end

def compute_team_stats(boxscores)
  team_stats = {
    "BIR": {
      targets: 0,
      air_yards: 0,
    },
    "ATL": {
      targets: 0,
      air_yards: 0,
    },
    "ARI": {
      targets: 0,
      air_yards: 0,
    },
    "MEM": {
      targets: 0,
      air_yards: 0,
    },
    "ORL": {
      targets: 0,
      air_yards: 0,
    },
    "SL": {
      targets: 0,
      air_yards: 0,
    },
    "SD": {
      targets: 0,
      air_yards: 0,
    },
    "SA": {
      targets: 0,
      air_yards: 0,
    },
  }

  boxscores.each do |bs|
    next if bs["week_num"] < 1

    [
      "home_stats",
      "away_stats"
    ].each do |k|
      bs[k].each do |s|
        key = s["player"]["team"].to_sym
        team_stats[key][:targets] += s["targets"]
        team_stats[key][:air_yards] += s["receiving_air_yards"]
      end
    end
  end

  team_stats
end

path = File.join(File.dirname(__FILE__), '../_data', 'boxscores.json')
boxscores = JSON.parse(File.open(path).read)["boxscores"]

team_stats = compute_team_stats(boxscores)

result = AAF::Client.query(ALL_PLAYERS)
result.data.players_connection.nodes.each do |node|
  next unless node.team

  add_player(players, node, boxscores, team_stats)
end

sort_order = {
  "QB": 0,
  "RB": 1,
  "WR": 2,
  "TE": 3
}

players.sort_by! do |p|
  [
    sort_order[p[:position]],
    p[:last_name],
    p[:first_name]
  ]
end

path = File.join(File.dirname(__FILE__), '../_data', 'players.json')
File.write(path, JSON.pretty_generate({
  meta: {
    last_modified: Time.now,
  },
  players: players,
}))
