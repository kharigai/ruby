N = gets.strip.to_i

h = Hash.new(0)
N.times { h[gets.strip.to_i] += 1 }

puts h.values.inject(0) { |sum, v|  sum += v - 1 }
