_n = gets
l1, *ls = gets.strip.split.map(&:to_i).sort.reverse
puts l1 < ls.inject(:+) ? 'Yes' : 'No'
