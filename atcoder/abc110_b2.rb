n,m,x,y = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i) + [x]
ys = gets.split.map(&:to_i) + [y]
 
puts xs.max < ys.min ? "No War" : "War" 
