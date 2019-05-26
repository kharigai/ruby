A, B = gets.strip.split.map(&:to_i)

# この観覧車は、 13 歳以上が乗るには B 円 ( B は偶数) かかりますが、 6 歳以上 12 歳以下の人はその半額で乗ることができ、 さらに 5 歳以下の人は無料で乗ることができます。

sum = 0
if A >= 13 
  sum = B
elsif A >= 6 && A <= 12
  sum = B / 2
else
  sum = 0
end

puts sum
