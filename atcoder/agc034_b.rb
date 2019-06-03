S = gets.strip

c = 0
tmp1 = S
while true
  sz = tmp1.scan(/ABCABC/).size
  break if sz <= 0
  c = sz * 3
  tmp1 = tmp1.gsub('ABCABC', 'BA')
end

p tmp1

while true
  tmp2 = tmp1.sub('ABC', 'BCA')
  break if tmp1.eql?(tmp2)
  c += 1
  tmp1 = tmp2
end

puts c
