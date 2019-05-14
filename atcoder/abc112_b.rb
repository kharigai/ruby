N, T = gets.strip.split.map(&:to_i)

def get_min(a, b) a < b ? a : b end

INF = 10 ** 5
cost = INF
N.times do
  c, t = gets.strip.split.map(&:to_i)
  cost = get_min(c, cost) if t <= T
end

puts cost < INF ? cost : 'TLE'
