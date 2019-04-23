n, q = gets.strip.split.map(&:to_i)
s = gets.strip
p = q.times.map { gets.strip.split.map(&:to_i) }

sum = Array.new(n + 1){0}

CHK_STR = 'ABC'
STR_SIZE = CHK_STR.size

n.times do |i| 
  sum[i + 1] = s[i, STR_SIZE].eql?(CHK_STR) ? sum[i] + 1 : sum[i]
end

index = STR_SIZE - 1
p.each do |l, r|
  r = (r > index) ? r - index : 0
  l = (l > index) ? l - index : 0
  puts sum[r] - sum[l]
end
