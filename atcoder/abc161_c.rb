N, K = gets.chomp.split.map(&:to_i)

r = N % K
if r > 0
  a = (K - r).abs
  puts N < (K - r).abs ? N : a 
else
  puts 0
end
