N, M = gets.strip.split.map(&:to_i)
A = gets.strip.split.map(&:to_f)
sum = A.inject(:+)

o = 1.0 / (4 * M)
puts A.select { |n| (n / sum) >= o }.size >= M ? 'Yes' : 'No'
