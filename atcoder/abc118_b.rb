n, m = gets.strip.split.map(&:to_i)

ans = Array.new(m + 1){0}

n.times do 
  _k, *like = gets.strip.split.map(&:to_i)
  like.each { |i| ans[i] = ans[i] + 1 }
end

puts ans.count { |x| x == n }
