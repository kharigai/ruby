N = gets.strip.to_i
ct = 0
(1..N).each { |i| ct += 1 if i.to_s.size.odd? }
puts ct
