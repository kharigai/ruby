S = gets.strip.chars
T = gets.strip.chars

ct = 0
S.each_with_index { |c, i| ct += 1 if c.eql?(T[i]) }
puts ct
