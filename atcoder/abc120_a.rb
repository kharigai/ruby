a, b, c = gets.strip.split.map(&:to_i)
max = b / a
puts max > c ? c : max
