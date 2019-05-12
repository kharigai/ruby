n = gets.strip.to_i

sum = 0
1.upto(n) do |i|
  sum += i if (n / i) == (n % i)
end
puts sum
