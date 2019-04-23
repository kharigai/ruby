n = gets.strip.to_i
s = gets.strip

# white count: wc, black count: bc
wc = s.count(".")
bc = 0 
ans = wc
n.times do |i|
  if s[i] == '.'
    wc -= 1
  else
    bc += 1
  end
  ans = wc + bc if ans > wc + bc
end
puts ans
