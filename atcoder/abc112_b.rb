n, T = gets.strip.split.map(&:to_i)

def chmin(a, b) a > b ? a : b end

INF = 10 ** 5
cost = INF
time = INF
n.times do
  c, t = gets.strip.split.map(&:to_i)
  if t <= T && c < cost
    cost = c
    time = t
  end
end

if cost != INF 
  puts cost
else
  puts 'TLE'
end
