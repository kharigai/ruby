S = gets.strip
T = gets.strip

is_exist = false
s = S
S.size.times do 
  if s.eql?(T)
    is_exist = true
    break
  end
  s = s[-1] + s[0..-2]
end

puts is_exist ? 'Yes' : 'No'
