n, s, t = gets.strip.split.map(&:to_i)

w = gets.strip.to_i
diffs = (n - 1).times.map { gets.strip.to_i }

ct = w.between?(s, t) ? 1 : 0
diffs.each do |d|
  w += d
  ct += 1 if w.between?(s, t) 
end
puts ct
  
