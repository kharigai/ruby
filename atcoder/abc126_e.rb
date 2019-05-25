def chmin(a, b) a < b ? a : b end

N, M = gets.strip.split.map(&:to_i)
a = Array.new(N){0}
b = Array.new(N){0}
M.times do
  x, y, z = gets.strip.split.map(&:to_i)
  if z.even?
    a[x - 1] = 1
    a[y - 1] = 1
  else
    b[x - 1] = 1
    b[y - 1] = 1
  end
end

if b.count(1) == 0
  puts a.count(0) + 1
else
  puts chmin(a.count(0), b.count(1))
end
