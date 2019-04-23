INF = 99999

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

cost = Array.new(n){INF}

1.upto(n - 1) do |i|
  cost[i] = [cost[i], cost[i - 1] + (a[i] - a[i - 1]).abs].min
  cost[i] = [cost[i], cost[i - 2] + (a[i] - a[i - 2]).abs].min if i > 1
end

puts cost[n - 1]
