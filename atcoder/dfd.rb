@k = gets.strip.to_i
@a = gets.strip.split.map(&:to_i)

def dfd(i, sum)
  return sum == @k if i >= @a.size
  return true if dfd(i + 1, sum) 
  return true if dfd(i + 1, sum + @a[i])
  return false
end

puts dfd(0, 0) ? "Yes" : "No"
