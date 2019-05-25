def chmax(a, b) a > b ? a : b end

N = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

res = -1
N.times do |i|
  ((i+1)...N).each do |j|
    res = chmax((a[i] - a[j]).abs, res)
  end
end

puts res
