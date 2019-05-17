N, K = gets.strip.split.map(&:to_i)

t = Array.new(K){0}

(1..N).each { |i| t[i % K] += 1 }

res = 0
K.times do |a|
  b = (K - a) % K
  c = (K - a) % K
  next if ((b + c) % K) != 0
  res += t[a] * t[b] * t[c]
end

puts res
