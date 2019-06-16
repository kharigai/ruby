# 130 B
W, H, x, y = gets.strip.split.map(&:to_i)

def chmax(a, b) a > b ? a : b end
def chmin(a, b) a < b ? a : b end

a1 = 0
a1 = chmin(x, W - x) * H if x < W

a2 = 0
a2 = W * chmin(y, H - y) if y < H

puts "#{chmax(a1, a2)}.000000 #{a1.eql?(a2) ? 1 : 0}"
