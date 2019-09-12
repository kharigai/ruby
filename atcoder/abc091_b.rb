S = gets.strip.to_i.times.map { gets.strip }
T = gets.strip.to_i.times.map { gets.strip }

sum = Hash.new(0)

S.each { |s| sum[s] += 1 }
T.each { |s| sum[s] -= 1 }

a = sum.map { |s| s.last }.max 
puts a > 0 ? a : 0
