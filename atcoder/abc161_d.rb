k = gets.strip.to_i 

a = 1.upto(9).map { |i| i }

loop do 
  if k <= a.size
    puts a[k-1]
    exit
  end
  k -= a.size
  old = Array.new

  # swap a, old array
  a, old = old, a

  old.each do |x|
    [-1, 0, 1].each do |i|
      d = x%10 + i 
      next if (d < 0 || d > 9) 
      a.push(x*10 + d)
    end
  end
end
