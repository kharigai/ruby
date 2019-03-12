a = gets.strip.split.map(&:to_i)

ans = []
most_sum = 0
a.combination(3) do |b|
	long = b.max
	sum = b.inject(:+)

	# 一番長い棒より、それ以外の2本の棒の長さが大きい場合、三角形が作れる	
	if long < (sum - long)
		most_sum = sum if most_sum < sum
		ans = b
	end
end

p ans
