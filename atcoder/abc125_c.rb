def chmax(a, b) a > b ? a : b end

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

ls = Array.new(n + 1){0}
rs = Array.new(n + 1){0}

n.times do |i| 
  j = (n - 1) - i
  ls[i + 1] = ls[i].gcd(a[i])
  rs[j] = rs[j + 1].gcd(a[j])
end

ans = 0
n.times do |i|
  ans = chmax(ls[i].gcd(rs[i + 1]), ans)
end

puts ans
