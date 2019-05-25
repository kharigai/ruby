N = gets.strip.to_i
a = gets.strip.split.each_with_index.map { |c, i| c.to_i - i - 1 }.sort

b = a[N / 2]

# sum = 0
# N.times { |i| sum += (a[i] - b).abs }
# puts sum

puts a.inject(0) { |sum, n| sum + (n - b).abs }
