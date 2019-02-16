

a = Array.new(3).map { Array.new(3){0} }

a[0][0] = 1
a[1][1] = 1

p a
a.each do |d|
	p d
end
