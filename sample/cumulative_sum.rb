puts "L R N"
puts "a1 a2 a3 a4 .. aN"
puts
puts "input: " 

L, R, N = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

# 累積和の初期化
s = Array.new(N + 1) {0}

N.times do |i|
  s[i + 1] = a[i] + s[i]
end

puts "ans: #{s[R] - s[L - 1]}"
