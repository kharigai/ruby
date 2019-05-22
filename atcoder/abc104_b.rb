S = gets.strip

if !S[0].eql?('A')
  puts 'WA'
elsif !(S[2, S.size - 3].count('C') == 1)
  puts 'WA'
elsif !S[1..-1].match(/[ABD-Z]/).nil?
  puts 'WA'
else
  puts 'AC'
end
