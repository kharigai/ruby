N, M = gets.strip.split.map(&:to_i)

ls = []
rs = []
M.times { |i| ls[i], rs[i] = gets.strip.split.map(&:to_i) }

res = rs.min - ls.max + 1
puts res > 0 ? res : 0
