# 130 C
N, K = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

# 累積和の初期化
s = Array.new(N + 1) {0}

N.times do |i|
  s[i + 1] = a[i] + s[i]
end

p s

# puts "ans: #{s[R] - s[L - 1]}"
