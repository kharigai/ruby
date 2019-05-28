a = gets.strip.split.map(&:to_i)
K = gets.strip.to_i
puts a.max ** (K + 1)
