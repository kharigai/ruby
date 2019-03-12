n = gets.strip.to_i
data = n.times.map { gets.strip.split.map(&:to_i) } 

def is_reach(c, n)
	ct, cx, cy = c
	nt, nx, ny = n

	dist = (nx - cx).abs + (ny - cy).abs

	# そもそも間に合わない	
	return false if dist > (nt - ct)

	# 行ったり来たりでOK
	(dist - (nt - ct)).even?
end

current = [0, 0, 0]
data.each do |d|
	if is_reach(current, d)
		current = d
	else
		puts 'No'
		exit 0
	end
end
puts 'Yes'
