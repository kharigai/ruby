A, B = gets.strip.split.map(&:to_i)
S = gets.strip
puts S =~ /[0-9]{#{A}}-[0-9]{#{B}}/ ? 'Yes' : 'No'
