n = gets.strip.to_i

def chmin(a, b) a < b ? a : b end
def chmax(a, b) a > b ? a : b end

count = 0
first_b = 0
last_a = 0
ab = 0
n.times do
  s = gets.strip
  count += s.scan(/AB/).size

  if s[0].eql?('B') && s[-1].eql?('A')
    ab += 1
  else
    first_b += 1 if s[0].eql?('B')
    last_a += 1 if s[-1].eql?('A')
  end
end

if (first_b + ab) > 0 && (last_a + ab) > 0 && (first_b + last_a + ab) > 1
  count += chmax(chmin(first_b + ab, last_a), chmin(first_b, last_a + ab))
end

puts count
