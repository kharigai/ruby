N, K = gets.strip.split.map(&:to_i)
if K > 1
  puts N % K
else
  puts 0
end
