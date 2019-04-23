_n = gets.strip.to_i
s = gets.strip
k = gets.strip.to_i
d = s[k - 1]

puts s.split('').map { |c| c == d ? c : '*' }.join

