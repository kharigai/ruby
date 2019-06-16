N, K = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

s = Array.new(N + 1) {0}

N.times do |i|
  s[i + 1] = a[i] + s[i]
end

c = 0
(1..N).each do |l|
  (l..N).each do |r|
    # c += 1 if (s[r] - s[l - 1]) >= K
    if (s[r] - s[l - 1]) >= K
      c += N - r + 1
      break
    end
  end
end

puts c
