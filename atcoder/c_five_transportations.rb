n = gets.strip.to_i
m = 5.times.map { gets.strip.to_i }.min

a = n / m
if (n % m) > 0
  a += 1
end
puts 5 + a - 1
