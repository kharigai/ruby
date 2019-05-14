N, M = gets.strip.split.map(&:to_i)
a = N.times.map { gets.strip.split.map(&:to_i) }.sort { |x, y| x[0] <=> y[0] }

rem = M
cost = 0
a.each do |price, count|
  if count >= rem 
    cost += (rem * price)
    break
  else
    cost += (count * price)
    rem -= count 
  end
end
puts cost
