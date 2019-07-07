# A 133
# 入力
N, A, B = gets.strip.split.map(&:to_i)

def chmin(a, b) a < b ? a : b end

puts chmin(N * A, B) 

