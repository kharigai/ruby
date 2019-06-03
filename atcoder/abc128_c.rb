# abc128 c
N, M = gets.strip.split.map(&:to_i)

a = M.times.map { gets.strip.split.map(&:to_i) }
pp = gets.strip.split.map(&:to_i)

p a
p pp

c = 0

(1<<N).times do |i|
  sum = Array.new(M){0}

  s = "%0#{N}b" % i
  s.size.times do |j|
    if s[j] == '1'
      p j
      p a[j]
      a[j][1..-1].each do |k| 
        sum[k - 1] += 1
      end
    end
  end  
  sum2 = sum.map { |n| n % 2 }
  c += 1 if sum2 == pp
end

puts c
