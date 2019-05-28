X = gets.strip.to_i

def chmax(a, b) a > b ? a : b end

res = 0
(1..X).each do |i|
  (2..1000).each do |j| 
    tmp = i ** j
    break if tmp > X
    res = chmax(tmp, res)
  end
end 
puts res
