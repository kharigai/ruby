H, W = gets.strip.split.map(&:to_i)

@dp = Array.new(H + 1) { Array.new(W + 1) {-1} }

def dfs(h, w)
  return 0 if h > H || w > W
  return 1 if h.eql?(H) && w.eql?(W)
  return @dp[h][w] if @dp[h][w] >= 0
  @dp[h][w] = dfs(h + 1, w) + dfs(h, w + 1)
end

puts dfs(0, 0)
