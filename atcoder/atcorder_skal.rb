# 入力
N, K = gets.strip.split.map(&:to_i)
n = gets.strip.to_i

# 配列を作成
# => [1, 2, 3]
a = N.times.map { gets.strip.to_i }

# => a = [1, 2, 3], b = [4, 5, 6], c = [7, 8, 9]
a, b, c  = N.times.map { gets.strip.split.map(&:to_i) }

# change max, min 
# データの入れ替え用
def chmax(a, b) a > b ? a : b end
def chmin(a, b) a < b ? a : b end

# 配列の初期化(1次元、2次元)
a = Array.new(N){0}
a = Array.new(N).map { Array.new(K){0} }

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
