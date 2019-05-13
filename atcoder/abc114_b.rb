s = gets.strip

ans = 10 ** 6 
(0..(s.size - 3)).each do |i|
  res = (753 - s[i, 3].to_i).abs
  ans = res if res < ans
end
puts ans
