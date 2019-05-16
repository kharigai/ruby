n = gets.strip.to_i
a = n.times.map { gets.strip }

correct = 'Yes'
if a.uniq.size == n
  last_word = a[0][0]
  a.each do |s|
    unless last_word.eql?(s[0])
      correct = 'No'
      break
    end
    last_word = s[-1]
  end
else
  correct = 'No'
end

puts correct
