a = 5.times.map { gets.strip.to_i }
n = gets.strip.to_i
puts (a[4] - a[0]) <= n ? 'Yay!' : ':('
