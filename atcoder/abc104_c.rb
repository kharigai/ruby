def chmin(a, b) a < b ? a : b end

D, G = gets.strip.split.map(&:to_i)

a = Array.new(D).map { gets.strip.split.map(&:to_i) }
a.unshift 0

res = 10 ** 8
(D).downto(1) do |i|
  c = 0
  sum = 0
  a[i][0].times do
    sum += (i * 100)
    c += 1
    break if sum >= G
  end
  # ボーナスを追加
  sum += a[i][1] if sum < G
  if sum < G
    (D).downto(1) do |j|
      next if i == j
      (a[j][0] - 1).times do
        sum += (j * 100)
        c += 1
        break if sum >= G
      end
    end
  end
  res = chmin(c, res)
end

puts res
