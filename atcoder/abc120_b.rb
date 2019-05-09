a, b, c = gets.strip.split.map(&:to_i)

cd = []
min = a < b ? a : b
1.upto(100) do |i|
  cd.push(i)  if (a % i) == 0 && (b % i) == 0
  break if min <= i
end

puts cd[cd.size - c]
