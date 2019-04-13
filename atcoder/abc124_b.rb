_n = gets
a = gets.strip.split.map(&:to_i)
f = a.shift

c = 1
a.each do |d|
  if d >= f
    c += 1
    f = d
  end
end 
puts c
