def fin(ok)
  puts ok ? 'Yes' : 'No'
  exit
end

gets.strip.chars.each_with_index do |c, i|
  j = i + 1 
  next if j.odd? && ['R', 'U', 'D'].include?(c)
  next if j.even? && ['L', 'U', 'D'].include?(c)
  fin false
end
fin true
