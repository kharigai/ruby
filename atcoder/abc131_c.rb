A, B, C, D = gets.strip.split.map(&:to_i) 

max = 10 ** 9

count = 0
(1..max).each do |i|
  c = C * i 
  d = D * i
  break if c > B && d > B
  if c >= A && c <= B && (c % D) != 0
    count += 1
  end
  if d >= A && d <= B && (d % C) != 0
    count += 1
  end
  if d % C == 0
    count += 1
  end
end

puts (B - A) + 1 - count
