A = gets.strip.to_i
B = gets.strip.to_i
C = gets.strip.to_i
X = gets.strip.to_i

c = 0

(0..A).each do |i|
  (0..B).each do |j|
    (0..C).each do |k|
      sum = (i * 500) + (j * 100) + (k * 50)
      c += 1 if sum.eql?(X)
    end
  end
end

puts c
