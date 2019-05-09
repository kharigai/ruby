n = gets.strip.to_i
v = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)

sum = 0
n.times do |i|
  res = v[i] - c[i]
  sum += res if res > 0
end
puts sum
