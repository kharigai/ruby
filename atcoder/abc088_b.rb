_n = gets.strip.to_i
a = gets.strip.split.map(&:to_i).sort.reverse

sum_even = 0
sum_odd = 0
a.each_with_index do |n, i|
  if i.even? 
    sum_even += n
  else
    sum_odd += n
  end
end
  
puts sum_even - sum_odd
