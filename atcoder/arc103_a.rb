N = gets.strip.to_i
even = Hash.new(0)
odd = Hash.new(0)
all = Hash.new(0)

A = gets.strip.split.map(&:to_i)

A.unshift 0

(1..N).each_with_index do |i|
  if i.even?
    even[A[i]] += 1
  else
    odd[A[i]] += 1
  end
  all[A[i]] += 1
end


if all.size > 1
  chg = 0
  chg += even.sort_by { |_, v| v }.first.last if even.size > 1
  chg += odd.sort_by  { |_, v| v }.first.last if odd.size > 1
  puts chg 
else
  puts all.values.first / 2
end
