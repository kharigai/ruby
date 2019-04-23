def get_prime_list(max)
  prime_table = Array.new(max + 1){true}
  prime_list = []

  (2..max).each do |n|
    if table[n] == true
      prime << n
      k = n * n
      while k <= max
        table[k] = false
        k += n
      end
    end
  end
  table
end

p prime_list(1000)
