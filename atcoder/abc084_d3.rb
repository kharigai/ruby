

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

MAX = 10 ** 5 + 1

pl = prime_list(MAX)

Q = gets.strip.to_i
lr = Q.times.map { gets.strip.split.map(&:to_i) }

a = Array.new(MAX) {0}

MAX.times do |i|
  unless pl[i].nil?
    a[i] = 1 unless pl[(i + 1) / 2].nil?
  end
end

s = Array.new(MAX + 1) {0}

MAX.times do |i|
  s[i + 1] = s[i] + a[i]
end

lr.each do |l, r|
  puts s[r - 1] - s[l] 
end
