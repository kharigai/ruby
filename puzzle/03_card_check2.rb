#!/usr/bin/env ruby

# 1 は必ず裏
puts 1

(2..100).each do |i|
	is_back = true
	(2..i).each do |j|
		if (i % j) == 0
			is_back = !is_back
		end
	end
	puts i if is_back
end
