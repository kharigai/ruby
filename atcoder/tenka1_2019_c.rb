n = gets.strip.to_i
s = gets.strip
 
ct_w = 0
ct_b = 0
is_count = false
n.times do |i|
  c = s[i]
  ct_b += 1 if c == '#'
  if is_count
    ct_w += 1 if c == '.'
  else
    is_count = true if c == '#'
  end
end

is_count = false
ct_w2 = 0
(n - 1).downto(0) do |i|
  c = s[i]
  if is_count
    ct_w2 += 1 if c == '#'
  else
    is_count = true if c == '.'
  end
end

puts [ct_w, ct_b, ct_w2].min


