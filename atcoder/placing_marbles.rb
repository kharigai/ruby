
# num = gets.strip.split('').map(&:to_i)
num = gets.strip.split('').map { |d| d.to_i }
puts num.inject(:+)
