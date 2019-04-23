a, b, c = gets.strip.split.map(&:to_i)
a, b = b, a if a > b
puts  c > a && c < b ? 'Yes' : 'No'
