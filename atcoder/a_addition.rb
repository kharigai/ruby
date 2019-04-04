_n = gets.strip.to_i
puts gets.strip.split.map(&:to_i).select { |d| d.odd? }.size.even? ? "YES" : "NO"
