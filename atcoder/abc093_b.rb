A, B, K  = gets.strip.split.map(&:to_i)

a = (A..B).to_a.unshift 0

if B > K
  (a[0..K] + a[-K..-1]).uniq.each { |i| puts i if i > 0}
else
  a.each { |i| puts i if i > 0}
end
