n, k = gets.strip.split.map(&:to_i)
a = n.times.map(&:to_i).combination(k)

def chk_seq(v)
  flag = true 
  s = v.sort
  a = s.shift
  s.each do |i|
    if a + 1 != i 
      flag = false
      break
    end
    a = i
  end
  flag
end

c = 0
a.each do |v|
  c += 1 if chk_seq(v)
end

puts c
