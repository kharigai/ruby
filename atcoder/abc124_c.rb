a = gets.strip.split("")

c = 0
if a.size > 0 
  f = a[0]
  a.each_with_index do |d, i|
    if i.even?  
      c += 1 if d != f
    else
      c += 1 if d == f
    end
  end
end
puts c
