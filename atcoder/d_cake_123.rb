_n1, _n2, _n3, n = gets.strip.split.map(&:to_i)
a, b, c  = 3.times.map { gets.strip.split.map(&:to_i) }

s = []
a.each do |i|
  b.each do |j|
		s << i + j
  end
end

s = s.sort.reverse.slice(0, n) if s.size > n

d = []
s.each do |i|
	c.each do |j|
		d << i + j
	end
end	

d.sort!.reverse!
n.times { |i| puts s2[i] }
