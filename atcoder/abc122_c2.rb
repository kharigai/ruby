n, q = gets.strip.split.map(&:to_i)
s = gets.strip
p = q.times.map { gets.strip.split.map(&:to_i) }

sum = Array.new(n + 1){0}

n.times do |i| 
  sum[i + 1] = s[i, 2].eql?('AC') ? sum[i] + 1 : sum[i]
end

p.each do |l, r|
  puts sum[r - 1] - sum[l - 1]
end
