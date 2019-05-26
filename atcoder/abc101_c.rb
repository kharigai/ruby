N, K = gets.strip.split.map(&:to_i)
_a = gets

rem = (N - K)
c = (rem / (K - 1)) + 1
c += 1 if rem % (K - 1) > 0
puts c
