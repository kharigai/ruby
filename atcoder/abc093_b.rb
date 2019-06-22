A, B, K  = gets.strip.split.map(&:to_i)

a = (A..(A + K - 1)).to_a + ((B - K + 1)..B).to_a
a.uniq.each do |i| 
  puts i if i >= A && i <= B 
end

