def get_prime_list(max)
  return [] if max < 0

  # seve 篩（ふるい）
  seve = Array.new(max + 1){true}
  primes = []

  (2..max).each do |n|
    if seve[n] == true
      primes << n
      k = n * n
      while k <= max
        seve[k] = false
        k += n
      end
    end
  end
  primes
end

p prime_list(1000)
