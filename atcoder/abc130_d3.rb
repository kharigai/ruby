N, K = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

res = 0
sum = 0
r = 0
N.times do |l|
  while r < N && sum < K
    sum += a[r]
    r += 1
  end
  
  break if sum < K

  res += N - r  + 1

  if l.eql?(r)
    r += 1
  else
    sum -= a[l]
  end
end

puts res
