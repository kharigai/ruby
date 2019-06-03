N = gets.strip.to_i
a = N.times.map { gets.strip.split.map(&:to_i) }

a.each do  |x, d, n|
  sum = 1
  n.times do |i|
    sum *= x + (i * d) 
    sum %= 1000003
  end
  puts sum
end
