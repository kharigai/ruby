N = gets.strip.to_i
h = Hash.new(0)
ary = []
N.times do |i|
  a = gets.strip.to_i
  ary[i] = a
  h[a] += 1
end

h =  h.sort.reverse

if h.size.eql?(1)
  a = h.first[0]
  N.times { puts a }
else
  a = h[0][0]
  b = h[1][0]
  ary.each { |n| puts n < a ? a : b }
end  

# h {数字 => 配列に含まれる, }
# h の要素が 1件の場合必ず、その数
# 1 番目に大きい数より小さい場合その数を出力
# 1 番目に大きい数と同じ場合、2番めに大きい数を出力
