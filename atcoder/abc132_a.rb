h = Hash.new(0)
gets.strip.split('').each do |c|
  h[c] += 1 
end

puts h.size.eql?(2) && h.values.all? { |i| i.eql?(2) } ? 'Yes' : 'No'
