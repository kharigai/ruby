n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

m = {0 => 1}

sum = 0
n.times do |i|
  sum += a[i]
  m[sum] = m[sum].nil? ? 1 : m[sum] + 1
end

res = 0 
m.each do |_k, v|
  next if v < 2 
  # 組み合わせ?
  res += v * (v - 1) / 2
end
puts res
