N = gets.strip.to_i
S = gets.strip.split.map(&:to_i)

ct = 0
S.combination(3) do |t| 
  a, b, c = t.sort
  ct += 1 if (a + b) > c
end
puts ct
