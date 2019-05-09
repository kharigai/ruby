a, b, c = gets.strip.split.map(&:to_i)

def factor(n)
  1.upto(n).select { |i| (n % i) == 0 }
end

cds = factor(a.gcd(b))

puts cds[cds.size - c]
