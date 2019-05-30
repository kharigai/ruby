

def prime_list(n)
  return [] if n < 2

  # seve 篩（ふるい）
  seve = Array.new(n + 1){true}
  primes = {}

  (2..n).each do |i|
    if seve[i] == true
      primes[i] = 1
      k = i * i
      while k <= n
        seve[k] = false
        k += i
      end
    end
  end
  primes
end

MAX = 10 ** 5

pl = prime_list(MAX)

Q = gets.strip.to_i
lr = Q.times.map { gets.strip.split.map(&:to_i) }

a = Array.new(MAX + 1) {0}

c = 0
(1..MAX).each do |i|
  unless pl[i].nil?
    c += 1 unless pl[(i + 1) / 2].nil?
  end
  a[i] = c
end

lr.each do |l, r|
  puts a[r] - a[l - 1] 
end
