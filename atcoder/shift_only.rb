_n = gets.to_i
nums = gets.strip.split.map(&:to_i)

cnt = 0
while nums.all?(&:even?)
	cnt += 1
	nums.map! { |d| d / 2 }
end
puts cnt
