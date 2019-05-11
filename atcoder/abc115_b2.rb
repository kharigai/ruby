n = gets.strip.to_i
ps = n.times.map { gets.strip.to_i }
puts ps.inject(:+) - (ps.max / 2)
