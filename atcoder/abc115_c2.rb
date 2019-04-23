n, k = gets.strip.split.map(&:to_i)
hs = n.times.map { gets.strip.to_i }.sort { |a, b| b <=> a }

def ckmin(a, b) a < b ? a : b end

res = 10**9 + 1
n.times do |max_pos|
  min_pos = max_pos + k - 1
  break if min_pos >= n
  res = ckmin(res, hs[max_pos] - hs[min_pos])
end
puts res
