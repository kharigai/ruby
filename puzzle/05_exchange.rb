#!/usr/bin/env ruby

coins = [10, 50, 100, 500]
TOTAL_PRICE = 1000

collects = []
(2..15).each do |i|
	coins.repeated_combination(i) do |combi|
		collects.push(combi) if combi.inject(:+) == TOTAL_PRICE
	end
end

puts collects.size
collects.each do |collect|
	p collect
end

