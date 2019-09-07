N = gets.strip.to_i
@cash = [2, 1]
N.times { |i| @cash[i + 2] = @cash[i] + @cash[i + 1] }
puts @cash[N]
