s = gets.strip
t = gets.strip

# これだと初期設定時 null エラー
# sh = {}
# th = {}
# デフォルトプロックを設定（初期設定時デフォルト処理が実行される）
hs = Hash.new { |h, k| h[k] = [] }
ht = Hash.new { |h, k| h[k] = [] }

s.size.times do |i|
  hs[s[i]] << i 
  ht[t[i]] << i
end

puts hs.values == ht.values ? 'Yes' : 'No'
