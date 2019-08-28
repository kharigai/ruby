SUM = gets.strip.split.map(&:to_i).inject(:+)
puts SUM.odd? ? "IMPOSSIBLE" : SUM / 2
