B = gets.strip

t = {}
[['A', 'T'], ['C', 'G']].each do |a, b|
  t[a] = b
  t[b] = a
end

puts t[B]
