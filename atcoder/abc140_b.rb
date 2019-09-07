N = gets.strip.to_i
A = gets.strip.split.map(&:to_i)
B = gets.strip.split.map(&:to_i).unshift 0
C = gets.strip.split.map(&:to_i).unshift 0

pre = -100
sum = 0
A.each do |pos|
  sum += B[pos] 
  sum += C[pre] if pos.eql?(pre + 1)
  pre = pos
end

puts sum
