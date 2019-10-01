N = gets.strip.to_i
o = (1..N).select { |n| n.odd? }.size
puts o.to_f / N
