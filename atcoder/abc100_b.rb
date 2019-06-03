D, N = gets.strip.split.map(&:to_i)
n = N < 100 ? N : N + 1
puts (100 ** D) * n
