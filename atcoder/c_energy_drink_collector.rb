N, M = gets.split().map(&:to_i)
array = []
N.times do
  array << [:price, :bottle].zip(gets.split().map(&:to_i)).to_h
end

array.sort! {|p,n| p[:price] <=> n[:price]}
cost = 0
bought_bottle = 0

until array.empty?
  if bought_bottle + array.first[:bottle] >= M
    cost += (M - bought_bottle) * array.first[:price]
    break
  else
    bought_bottle += array.first[:bottle]
    cost += array.first[:price] * array.first[:bottle]
    array.shift(1)
  end
end

p cost
# n, count = gets.strip.split.map(&:to_i)
#
# h = {}
# n.times do |i|
#   amount, number = gets.strip.split.map(&:to_i)
#   h[amount] = number
# end
#
# sum = 0
# hs = h.sort
# hs.each do |d|
#   if count >= d[1]
#     sum += d[0] * d[1]
#     count -= d[1]
#   else
#     sum += d[0] * count
#     count = 0
#   end
#   break if count <= 0
# end
# puts sum
