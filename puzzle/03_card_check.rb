#!/usr/bin/env ruby

MAX_NUMBER = 100
MIN_NUMBER = 2

a = Array.new(MAX_NUMBER, false)

(MIN_NUMBER..MAX_NUMBER).each do |i|
	j = i - 1
	while j < MAX_NUMBER
		a[j] = !a[j]
		j += i
	end	
end

MAX_NUMBER.times do |i|
	puts i + 1 if !a[i]
end
