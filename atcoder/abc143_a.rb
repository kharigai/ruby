A, B = gets.strip.split.map(&:to_i)
s = A - (B * 2)
puts s > 0 ? s : 0
