n, T = gets.strip.split.map(&:to_i)

a = n.times.map { gets.strip.split.map(&:to_i) }
cs = a.select { |c, t| t <= T }.map { |c, t| c }
# p a
# p cs
puts cs.size > 0 ? cs.min : 'TLE'
