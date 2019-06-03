N, Q = gets.strip.split.map(&:to_i)
S = gets.strip

lr = Q.times.map { gets.strip.split.map(&:to_i) }

a = Array.new(N + 1) {0}

N.times do |i|
  a[i + 1] = S[i..(i+1)].eql?('AC') ? a[i] + 1 : a[i]
end

lr.each do |l, r|
  puts a[r - 1] - a[l - 1]
end
