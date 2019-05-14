N, T = gets.strip.split.map(&:to_i)
a = N.times.map { gets.strip.split.map(&:to_i) }.select { |c, t| t <= T }.sort { |x, y| x[0] <=> y[0] }
puts a.size > 0 ? a.first[0] : 'TLE'
