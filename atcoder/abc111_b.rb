N = gets.strip.to_i
res = 0
[111, 222, 333, 444, 555, 666, 777, 888, 999].each do |t|
  res = t
  break if t >= N 
end
puts res
