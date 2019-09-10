N = gets.strip.to_i
h = Hash.new(0)
ary = []

A = N.times.map { gets.strip.to_i }
a, b = *A.sort.reverse

A.each { |n| puts n.eql?(a) ? b : a }
