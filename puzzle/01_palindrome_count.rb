#!/usr/bin/env ruby

num = 11
while true
	puts "[#{num}, #{num.to_s(8)}, #{num.to_s(2)}]"
	if num.to_s == num.to_s.reverse &&
		 num.to_s(8) == num.to_s(8).reverse &&
		 num.to_s(2) == num.to_s(2).reverse 
		puts "Answer: #{num}"
		break
	end
	num += 2
end
