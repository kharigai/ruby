def chmax(a, b) a > b ? a : b end

N = 19
W = "x"
B = "o"

bord = N.times.map { gets.strip }
map = Array.new(N) { Array.new(N) { true } }

mov = [[1, 0], [-1, 0], [0, 1], [0, -1], [1, 1], [1, -1], [-1, 1], [-1, -1]]

bc = 0
wc = 0

bmax = 0
wmax = 0

N.times do |i|
  bws = bord[i].scan(/[xo]/)
  next if bws.size.zero?
  line = bord[i].split('')

  bc += bws.count(B)
  wc += bws.count(W)

  # Black or White
  bws.uniq.each do |bw|
    queue = [[line.find_index(bw), i]]
    res = 0
    until queue.size.zero?
      x, y = queue.shift
      mov.size.times do |k|
        next_x = mov[k].first + x
        next_y = mov[k].last  + y
        if next_x >= 0 && next_x < N &&
           next_y >= 0 && next_y < N && 
           map[next_y][next_x] && bord[next_y][next_x].eql?(bw)

            res += 1
            map[next_y][next_x] = false

            queue.push([next_x, next_y])
        end
      end
    end
    wmax = chmax(res, wmax) if bw.eql?(W)
    bmax = chmax(res, bmax) if bw.eql?(B)
  end
end

res = true

# 黒と白の数は同じか白が1つ少ない
if bc.eql?(wc) || bc.eql?(wc + 1)
  # 9以上並ぶことはない（最大: 4 + 1 + 4）
  if bmax > 9 || wmax > 9
    res = false
  else
    # 黒白両方が勝つことはない
    if bmax >= 5 && wmax >= 5 
      res = false
    # 黒勝ちの時、白は黒の数 -1（黒勝ちの時、黒白同じ数はない）
    elsif bmax >= 5 && bc.eql?(wc)
      res = false
    # 白勝ちの時、白は黒は同じ数
    elsif wmax >= 5 && bc.eql?(wc + 1)
      res = false
    end
  end
else
  res = false
end  

# puts "Black count: #{bc} max: #{bmax}"
# puts "White count: #{wc} max: #{wmax}"

puts res ? 'YES' : 'NO'
