A, D = gets.strip.split.map(&:to_i)
ck = (D * 2 + 1)
ct = A / ck
ct += 1 unless (A % ck).zero?
puts ct
