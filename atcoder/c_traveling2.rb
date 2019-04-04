n = gets.strip.to_i

a = [[0, 0, 0]]
a << n.times { gets.strip.split.map(&:to_i) }

enable = true
n.times do |i|
  j = i + 1
  # t: time
  t = a[j][0] - a[i][0]
  d = (a[j][1] - a[i][1]).abs + (a[j][2] - a[i][2]).abs 
  # 移動距離が時間をオーバしている... 無理
  if t < d
    enable = false
  # 時間が距離をオーバしている場合
  # 残り時間が偶数であれば、折り返しで着地可能
  elsif t > d && (t - d).odd?
    enable = false
  end
end

puts enable ? 'Yes' : 'No'
