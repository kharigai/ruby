R, G, B, N = gets.strip.split.map(&:to_i)

@a = []
def dfs(r, g, b)
  sum = r + g + b
  if sum == N
    @a << [r, g, b] unless @a.include?([r, g, b])
    return true
  elsif sum > N
    return false
  end

  dfs(r + R, g, b)
  dfs(r, g + G, b)
  dfs(r, g, b + B)
end 

dfs(0, 0, 0)
puts @a.size

