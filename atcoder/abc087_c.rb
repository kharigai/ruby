def chmax(a, b) a > b ? a : b end

N = gets.strip.to_i
A1 = gets.strip.split.map(&:to_i)
A2 = gets.strip.split.map(&:to_i)

# 累積和の初期化
s1 = Array.new(N + 1) {0}
s2 = Array.new(N + 1) {0}

N.times do |i|
  s1[i + 1] = A1[i] + s1[i]
  s2[i + 1] = A2[i] + s2[i]
end

res = 0
(1..N).each do |i|
  res = chmax((s1[i] - s1[0]) + (s2[N] - s2[i - 1]), res)
end

puts res
