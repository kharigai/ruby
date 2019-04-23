## 累積和
n, q = gets.strip.split.map(&:to_i)
s = gets.strip

t = Array.new(n + 1){0}

n.times do |i|
  ct = s[i, 2].eql?('AC') ? 1 : 0
  t[i + 1] = t[i] + ct 
end

d = q.times.map { gets.strip.split.map(&:to_i) }
d.each do |l, r|
  puts t[r-1] - t[l-1]
end
