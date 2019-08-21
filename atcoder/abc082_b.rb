S = gets.strip.split('').sort.join('')
T = gets.strip.split('').sort { |a, b| b <=> a }.join('')
puts S < T ? 'Yes' : 'No'
