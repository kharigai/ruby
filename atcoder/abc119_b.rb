n = gets.strip.to_i

sum = 0.0 
n.times do 
  m, c = gets.strip.split
  case c
  when 'JPY'
    sum += m.to_f
  when 'BTC'
    sum += (m.to_f * 380000.0)
  end
end
puts sum
