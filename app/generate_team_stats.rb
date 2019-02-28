require_relative "./aaf"
require "pry"
require "csv"

path = File.join(File.dirname(__FILE__), '../_data', 'boxscores.json')
boxscores = JSON.parse(File.open(path).read)["boxscores"]

def get_stats(position, team_stats)
  totals = Hash.new(0)
  team_stats.each do |t|
    next unless t["player"]["position"] == position

    t.each do |k, v|
      next unless v.is_a? Numeric

      totals[k] = 0 if totals[k].nil?
      totals[k] += v
      totals[k] = totals[k].round(1)
    end
  end
  totals
end

def sum_stats(bx, team_stats)
  {
    game: {
      week: bx["week_num"],
      name: bx["title"]
    },
    rb: get_stats("RUNNING_BACK", team_stats),
    wr: get_stats("WIDE_RECEIVER", team_stats),
    te: get_stats("TIGHT_END", team_stats),
    qb: get_stats("QUARTERBACK", team_stats),
  }
end

def season_sums(stats)
  stats[:totals] = {
    allowed: {
      rb: Hash.new(0),
      wr: Hash.new(0),
      te: Hash.new(0),
      qb: Hash.new(0),
    },
    generated: {
      rb: Hash.new(0),
      wr: Hash.new(0),
      te: Hash.new(0),
      qb: Hash.new(0),
    }
  }

  [:allowed, :generated].each do |key|
    games = stats[key].size

    stats[key].each do |s|
      [:rb, :wr, :qb, :te].each do |pos|
        s[pos].each do |k,v|
          next unless v.is_a? Numeric

          stats[:totals][key][pos][k] += v
          stats[:totals][key][pos][k] = stats[:totals][key][pos][k].round(1)
        end

        stats[:totals][key][pos][:games] = games

        stats[:totals][key][pos].clone.each do |k, v|
          stats[:totals][key][pos]["#{k}_per_game"] = (stats[:totals][key][pos][k].to_f / games).round(1)
        end
      end
    end
  end

  stats
end

def build_production_stats(team, boxscores)
  stats = {
    team: team,
    allowed: [],
    generated: []
  }

  boxscores.each do |bx|
    if bx["home_abbr"] == team
      stats[:allowed] << sum_stats(bx, bx["away_stats"])
      stats[:generated] << sum_stats(bx, bx["home_stats"])
    end

    if bx["away_abbr"] == team
      stats[:allowed] << sum_stats(bx, bx["home_stats"])
      stats[:generated] << sum_stats(bx, bx["away_stats"])
    end
  end

  stats = season_sums(stats)

  stats
end

def build_stats(boxscores)
  stats = []

  [
    "ATL",
    "ARI",
    "BIR",
    "MEM",
    "ORL",
    "SA",
    "SD",
    "SL",
  ].each do |t|
    stats << build_production_stats(t, boxscores)
  end

  stats
end

stats = build_stats(boxscores.select{|b| b["week_num"] >= 1 && b["status"] == "COMPLETE"})

path = File.join(File.dirname(__FILE__), '../_data', 'team_stats.json')
File.write(path, JSON.pretty_generate(data: stats))
