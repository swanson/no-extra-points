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
      }
    }
  }
GRAPHQL

rosters = []

def get_roster(rosters, team)
  roster = rosters.find{|r| r[:team_id] == team.id}
  if roster.nil?
    roster = {
      team_id: team.id,
      team_name: team.name,
      team_abbr: team.abbreviation,
      players: []
    }
    rosters << roster
  end

  roster
end

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

def add_player_to_roster(roster, node)
  roster[:players] << {
    guid: node.id,
    name: node.name.given_name + " " + node.name.family_name,
    position: map_position(node.position),
    number: node.jersey_number || "0",
    team: node.team&.abbreviation,
    short_name: node.name.given_name.chars.first + ". " + node.name.family_name,
    last_name: node.name.family_name,
    first_name: node.name.given_name,
    starting: false,
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
  next if node.roster_status != "ACTIVE_LIST"
  next unless valid_position?(node.position)

  roster = get_roster(rosters, node.team)

  add_player_to_roster(roster, node)
end

sort_order = {
  "QB": 0,
  "RB": 1,
  "WR": 2,
  "TE": 3
}

rosters.each do |roster|
  roster[:players] = roster[:players].sort_by do |p|
    [
      sort_order[p[:position].to_sym],
      p[:last_name],
      p[:first_name]
    ]
  end
end

rosters.sort_by!{|r| r[:team_name]}

path = File.join(File.dirname(__FILE__), '../_data', 'rosters.json')
File.write(path, JSON.pretty_generate({
  meta: {
    last_modified: Time.now,
  },
  rosters: rosters,
}))
