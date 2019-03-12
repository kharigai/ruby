h1, w1 = gets.strip.split.map(&:to_i)
h2, w2 = gets.strip.split.map(&:to_i)

a = Array.new(h1).map { Array.new(w1){0} }

h2.times do |i|
  w1.times do |j|
    a[i][j] = 1
  end
end

h1.times do |i|
  w2.times do |j|
    a[i][j] = 1
  end
end

count = 0
h1.times do |i|
  count += a[i].select { |d| d == 0 }.size
end

puts count