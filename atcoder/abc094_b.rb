N, M, X = gets.strip.split.map(&:to_i) 
ms = gets.strip.split.map(&:to_i)

a = Array.new(N) {0}

ms.each { |i| a[i] = 1 }

l = a[0..X].inject(:+)
r = a[X..-1].inject(:+)

puts l < r ? l : r
