n = gets.strip.to_i
p1, *ps = n.times.map { gets.strip.to_i }.sort.reverse
puts (p1 / 2) + ps.inject(:+)
