s = gets.strip

ct_red = s.count('0')
ct_blue = s.count('1')

if ct_red > 0 && ct_blue > 0
  puts ct_red < ct_blue ? ct_red * 2 : ct_blue * 2
else
  puts 0
end
