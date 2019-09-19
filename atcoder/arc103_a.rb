N = gets.strip.to_i
s = gets.strip.split.map(&:to_i)

hs = Array.new(2) { Hash.new(0) }
hs[0][0] = 0
hs[1][0] = 0
# => [{0=>0}, {0=>0}]
# この初期化によりハッシュ数（2）を保証する

s.each_with_index { |n, i| hs[i%2][n] += 1 }

e = hs[0].sort_by { |_, v| -v }
o = hs[1].sort_by { |_, v| -v }

if e[0][0] != o[0][0]
  n = e[0][1] + o[0][1]
else
  n = [e[0][1] + o[1][1], e[1][1] + o[0][1]].max
end
puts N - n
