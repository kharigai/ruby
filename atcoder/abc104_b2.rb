s = gets.strip
puts s.match(/^A[a-z]+C[a-z]+$/) ? 'AC' : 'WA'
