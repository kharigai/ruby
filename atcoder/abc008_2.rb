n = gets.strip.to_i
t = {}
n.times do 
  name = gets.strip
  t[name] = t[name].nil? ? 1 : t[name] + 1
end
puts t.max { |a, b| a[1] <=> b[1] }[0]
