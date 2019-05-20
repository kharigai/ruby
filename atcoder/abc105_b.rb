CP = 4
DP = 7

N = gets.strip.to_i

def dfs(c, d, p)
  return c + d if p == 0
  return 0 if p < 0 

  res = 0
  res += dfs(c + 1, d, p - CP)
  res += dfs(c, d + 1, p - DP) if res == 0
  return res
end

res = dfs(0, 0, N)
p res
puts res > 0 ? 'Yes' : 'No'
