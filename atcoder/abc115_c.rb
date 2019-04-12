INF = 999999999
n, k = gets.strip.split.map(&:to_i)
hs = n.times.map { gets.strip.to_i }.sort

ref = k - 1
last_pos = n - 1
result = INF
n.times do |i|
  j = i + ref
  result = [hs[j] - hs[i], result].min
  break if j >= last_pos
end 

puts result

