a = 5.times.map { gets.strip.to_i }

s = []
a.each do |d|
  s << [d, d % 10]
end

zero = s.select { |d| d[1] == 0 }
num = s.select { |d| d[1] > 0 }.sort { |i, j| i[1] <=> j[1] }.reverse

sum = 0
zero.each do |d|
  sum += d[0]
end

num.each_with_index do |d, i|
  if (i + 1) < num.size
    sum += d[0] + (10 - d[1])
  else
    sum += d[0]
  end
end

puts sum
