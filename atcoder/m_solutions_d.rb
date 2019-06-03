M = gets.strip.to_i

s = Array.new(M) {0}

pp = (M - 1).times.map { gets.strip.split.map(&:to_i) }


a = gets.strip.split.map(&:to_i)

sum = a.sort[0..-2].inject(:+)

pp.each do |l, r|

end
