# B 133
# 入力
N, D = gets.strip.split.map(&:to_i)
# a [[1, 2, 3], [4, 5, 6], [7, 8, 9],..]
a = N.times.map { gets.strip.split.map(&:to_i) }

c = 0
N.times do |i|
  (i + 1..(N - 1)).each do |j|
    sum = 0
    D.times do |k|
      sum += (a[i][k] - a[j][k]).abs ** 2
    end   
    c += 1 if Math.sqrt(sum).to_s[-2,2].eql?('.0') 
  end
end

puts c
