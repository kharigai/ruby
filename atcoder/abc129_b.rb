def chmin(a, b) a < b ? a : b end

N = gets.strip.to_i
A = gets.strip.split.map(&:to_i)

if N > 2
  res = 10 ** 6
  (1..(N - 2)).each do |i|
    sum = (A[0..i].inject(:+) - A[(i + 1)..-1].inject(:+)).abs
    res = chmin(sum, res)
  end
  puts res
else
  puts (A.first - A.last).abs
end

