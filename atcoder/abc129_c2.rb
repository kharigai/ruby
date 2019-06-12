N, M = gets.strip.split.map(&:to_i)

mod = 10 ** 9 + 7

# bf: broken floors
bf = {}
M.times.map { bf[gets.strip.to_i] = 1 }

dp = Array.new(N + 1){0}

dp[0] = 1
dp[1] = 1 if bf[1].nil?

(2..N).each do |i|
  next unless bf[i].nil?
  #dp[i] = dp[i - 1] + dp[i - 2]
  dp[i] = (dp[i - 1] + dp[i - 2]) % mod
end

# puts dp[N] % mod
puts dp[N]
