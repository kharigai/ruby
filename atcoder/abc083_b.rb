N, A, B = gets.strip.split.map(&:to_i)

a = Array.new(N){0}

res = 0
(1..N).each do |i|
  tmp = i.to_s.split('').map(&:to_i).inject(:+)
  res += i if (tmp >= A) && (tmp <= B)
end

puts res

