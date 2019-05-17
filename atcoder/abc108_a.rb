K = gets.strip.to_i

c = 0
(1..K).each do |i|
  (1..K).each do |j|
    if i.even? && j.odd?
      c += 1
    end
  end
end

puts c
