N = gets.strip.to_i
A = N.times.map { gets.strip.to_i }

a, b = *A.sort.reverse
A.each { |n| puts n.eql?(a) ? b : a }
