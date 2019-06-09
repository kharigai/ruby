# 入力
N, K = gets.strip.split.map(&:to_i)
n = gets.strip.to_i

a = gets.strip.split.each_with_index.map { |c, i| c.to_i - i - 1 }.sort

# 配列を作成
# => [1, 2, 3]
a = N.times.map { gets.strip.to_i }

# => a = [1, 2, 3], b = [4, 5, 6], c = [7, 8, 9]
a, b, c  = N.times.map { gets.strip.split.map(&:to_i) }

# a [[1, 2, 3], [4, 5, 6], [7, 8, 9],..]
a = N.times.map { gets.strip.split.map(&:to_i) }

# inject
h = { a: 1, b: 2, c: 3 }
h.values.inject(0) { |sum, v| sum += v}
# => 6

a = [1, 2, 3]
a.inject(0) { |sum, v| sum += v }
# => 6

# 等価
a.inject(:+)


# 複数の配列を初期化
ls = []
rs = []
M.times { |i| ls[i], rs[i] = gets.strip.split.map(&:to_i) }

# change max, min 
# データの入れ替え用
def chmax(a, b) a > b ? a : b end
def chmin(a, b) a < b ? a : b end

# 配列の初期化(1次元、2次元)
a = Array.new(N){0}
a = Array.new(N).map { Array.new(K){0} }

# 積算
puts a.inject(0) { |sum, n| sum + (n - b).abs }


# 指定された値以下のすべての約数が含まれる配列を生成する
def factor(n) 
  return [] if n < 1
  (1..n).select { |i| (n % i) == 0 }
end

# 指定された値以下の全ての素数が含まれる配列を生成する（エラトステネスの篩）
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

## bit 全探索
D = gets.strip.to_i

(1<<D).times do |mask|

  D.times do |i|
    unless (mask & (1<<i)).zero?
      # 処理
    end
  end

  # 全化作以外を対応する場合
  if sum < G
    (D - 1).downto(0) do |i|
      next unless (mask & (1<<i)).zero?
      (0...counts[i]).each do
        break if sum >= G
        sum += (i + 1) * 100
        count += 1
      end
    end
  end
  res = chmin(count, res)
end

puts res
