r, D, x = gets.strip.split.map(&:to_i)

10.times do 
  x = r * x - D 
  puts x
end
