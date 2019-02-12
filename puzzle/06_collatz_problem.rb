#!/usr/bin/env ruby

def check_collatz(original_number)
	n = (original_number * 3) + 1
	while n != 1
			n = n.even? ? n / 2 : (n * 3) + 1
			return true if n == original_number
	end
	return false 
end

p 2.step(10000, 2).count {|i| check_collatz(i)}

# うまく動かない
# [ブロックをdo…endで書くか{…}で書くかにより挙動が変わる例](https://qiita.com/riocampos/items/43e4431ddff93e01a18d)
# p 2.step(10000, 2).count do |i| 
# 	check_collatz(i)
# end
# 
# これなら大丈夫
# count = 2.step(10000, 2).count do |i| 
# 	check_collatz(i)}
# end
# p count
