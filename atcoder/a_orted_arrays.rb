s = gets.strip.split.map(&:to_i)

a = {}
s.each do |d| 
  a[d] = 0 if a[d].nil?
  a[d] += 1
end

a.sort!

base = a.first

count = 0
s.each do |d|
  if d == base
    count += 1
  elsif d+1 == base
    count += 1
  elsif d-1 == base
    count += 1
  end
end
