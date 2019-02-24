require_relative "./aaf"
require "pry"
require "csv"

path = File.join(File.dirname(__FILE__), '../_data', 'boxscores.json')
boxscores = JSON.parse(File.open(path).read)["boxscores"]

WEEK = 2

airyards_model = {}
(1..WEEK).each do |i|
  airyards_model[i] = []
end

boxscores.each do |bx|
  week = bx["week_num"]
  next unless week >= 1 and week <= WEEK

  [
    "home_stats",
    "away_stats"
  ].each do |key|
    bx[key].each do |ps|
      next unless ps["targets"] > 0
      next unless ["WIDE_RECEIVER", "TIGHT_END"].include?(
        ps["player"]["position"]
      )

      airyards_model[week] << {
        id: ps["player"]["guid"],
        player: ps["player"]["name"],
        tar_pg: ps["targets"],
        td: ps["receiving_td"],
        rec: ps["catches"],
        rec_yards_pg: ps["receiving_yards"],
        yac: ps["yac"],
        air_yards_pg: ps["receiving_air_yards"],
        aypt: ps["average_depth_of_target"],
        racr: ps["racr"],
        ms_air_yards: ps["air_yards_market_share"],
        target_share: ps["target_market_share"],
        ppr_fpts: ps["fpts"],
      }
    end
  end

end


path = File.join(File.dirname(__FILE__), '../air_yards', 'air_yards_buy_low.json')
File.write(path, JSON.pretty_generate(airyards_model))
