
def get_prime_list(max)
  prime_table = Array.new(max + 1){true}
  prime_list = []
  (2..max).each do |n|
    if prime_table[n] == true
      prime_list << n
      k = n * n
      while k <= max
        prime_table[k] = false
        k += n
      end
    end
  end
  return prime_table, prime_list
end

max = 10 ** 5 + 1
pt, pl = get_prime_list(max)

sub_prime = Array.new(max){0}
pl.each { |p| sub_prime[p] = 1 if pt[(p + 1) / 2] }

sum = Array.new(max + 1){0}
max.times { |i| sum[i + 1] = sum[i] + sub_prime[i] }

q = gets.strip.to_i
d = q.times.map { gets.strip.split.map(&:to_i) }
d.each do |l, r| 
  puts sum[r + 1] - sum[l]
end
