S = gets.strip

def dfs(s, n, a)
  if s.size == n
    a << s.to_i if s.split('').uniq.sort.eql?(['3', '5', '7'])
    return
  end

  dfs(s + '3', n, a)
  dfs(s + '5', n, a)
  dfs(s + '7', n, a)
end

a = []
3.upto(S.size) { |i| dfs('', i, a) }

n = S.to_i
puts a.count { |d| d <= n }
