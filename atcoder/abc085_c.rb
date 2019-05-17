N, Y = gets.strip.split.map(&:to_i)

def dfs(a, b) 
  sum = (a * 10000) + (b * 5000)
  puts "#{a}, #{b}"
  if sum == Y
    if (a + b) == N
      return [a, b, 0]
    else
      return nil
    end
  elsif sum > Y
    return nil
  end

  # 残りが 1000 の枚数
  c = (Y - sum) / 1000 
  if c == (N - (a + b))
    return [a, b, c]
  end

  res = dfs(a + 1, b)
  return res unless res.nil?

  res = dfs(a, b + 1)
  return res unless res.nil?

  return nil
end

res = dfs(0, 0)
puts res.nil? ? '-1 -1 -1' : "#{res[0]} #{res[1]} #{res[2]}"
