n = gets.strip.sub(/ /, '').to_i

(1..1000).each do |i|
  s = i * i
  if n == s
    puts 'Yes'
    exit
  elsif n < s
    break
  end  
end

puts 'No'
