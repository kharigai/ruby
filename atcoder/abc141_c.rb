N, K, Q = gets.strip.split.map(&:to_i)
a = Array.new(N){K - Q}
Q.times { a[gets.strip.to_i - 1] += 1 }
a.each { |i| puts i > 0 ? 'Yes' : 'No' }
