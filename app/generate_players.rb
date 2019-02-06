require_relative "./aaf"
require "pry"

ALL_PLAYERS = AAF::Client.parse <<-'GRAPHQL'
  query {
    playersConnection(first: 5000, platoon: OFFENSE) {
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
        team {
          id
          abbreviation
          name
        }
        heightMillimeters
        weightGrams
        rosterStatus
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

def add_player(players, node)
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
    game_logs: []
  }
end

def valid_position?(position)
  [
    "QUARTERBACK",
    "RUNNING_BACK",
    "WIDE_RECEIVER",
    "TIGHT_END"
  ].include?(position)
end

result = AAF::Client.query(ALL_PLAYERS)
result.data.players_connection.nodes.each do |node|
  next unless node.team
  next unless valid_position?(node.position)

  add_player(players, node)
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
