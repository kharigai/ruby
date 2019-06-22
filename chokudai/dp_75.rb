MAXW = gets.strip.to_i
WS = gets.strip.split.map(&:to_i)
VS = gets.strip.split.map(&:to_i)

def chmax(a, b) a > b ? a : b end

N = WS.size

def dfs(i, w)
  return 0 if i.eql?(N)
  return dfs(i + 1, w) if w < WS[i]
  chmax(dfs(i + 1, w), dfs(i + 1, w - WS[i]) + VS[i])
end

puts dfs(0, MAXW)
