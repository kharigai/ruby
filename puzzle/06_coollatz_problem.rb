#!/usr/bin/env ruby

def check(original_number)
	n = (original_number * 3) + 1
	while n != 1
			n = n.even? ? n / 2 : (n * 3) + 1
			return true if n == original_number
	end
	return false 
end

2.step(10000, 2).count do |i|
	puts i if check(i)
end
