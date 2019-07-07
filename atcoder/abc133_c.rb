L, R = gets.strip.split.map(&:to_i)

res = 3000
num = 0
(L..R).each do |i| 
  tmp = i % 2019
  if tmp < res 
    num = i
    res = tmp
  end
  if res.zero?
    puts 0
    exit
  end
end

puts num.eql?(R) ? (res - 1) * res : res * (res + 1)
