_N, K = gets.strip.split.map(&:to_i)
s = gets.strip
s[K - 1] = s[K - 1].downcase
puts s
