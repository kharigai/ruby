def prime_list(n)
  return [] if n < 2

  # seve 篩（ふるい）
  seve = Array.new(n + 1){true}
  primes = []

  (2..n).each do |i|
    if seve[i] == true
      primes << i
      k = i * i
      while k <= n
        seve[k] = false
        k += i
      end
    end
  end
  primes
end

p prime_list(10)
