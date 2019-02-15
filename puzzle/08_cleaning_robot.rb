#!/usr/bin/env ruby

MOVING_NUMBER = 12

RIGHT = 1
LEFT = -1
UP = -1
DOWN = 1

def move(log)
	return 1 if log.size == MOVING_NUMBER + 1

	cnt = 0 
	[[RIGHT, 0], [LEFT, 0], [0, UP], [0, DOWN]].each do |pos|
		next_pos = log.last.map.with_index { |v, i| v + pos[i] }
		if !log.include?(next_pos)
			cnt += move(log + [next_pos])
		end
	end 
	cnt
end

puts move([[0, 0]])
