# - 白と黒の石は同じか黒が1つ多い
# - 白と黒両方が勝つことはない
# - 5石連続は1つ（2つはない）
# - 勝った方は、１つ石を取り除くと５石連続しない（そうしないと途中で対戦が終了しているから）

N = 19
W = "x"
B = "o"

@bord = N.times.map { gets.strip }

def fin(yes)
  puts yes ? "YES" : "NO"
  exit
end

def get_chains(bw)
  map = Array.new(N) { Array.new(N) { true } }

  mv = [[1, 0], [-1, 0], [0, 1], [0, -1], [1, 1], [1, -1], [-1, 1], [-1, -1]]

  chains = []

  N.times do |i|
    N.times do |j|
      if @bord[i][j].eql?(bw)
        queue = [[j, i]]     
        chain = 0
        until queue.size.zero?
          x, y = queue.shift
          mv.each do |m|
            next_x = m.first + x
            next_y = m.last  + y
            if next_x >= 0 && next_x < N &&
               next_y >= 0 && next_y < N && 
               map[next_y][next_x] && @bord[next_y][next_x].eql?(bw)

                chain += 1
                map[next_y][next_x] = false

                queue.push([next_x, next_y])
            end
          end
        end
        chains << chain if chain >= 5
      end
    end
  end
  chains
end

bc = 0
wc = 0

N.times do |i|
  bws = @bord[i].scan(/[xo]/)
  next if bws.size.zero?
  bc += bws.count(B)
  wc += bws.count(W)
end

# 白と黒の石は同じか黒が1つ多い
if bc.eql?(wc) || bc.eql?(wc + 1)
  b_chains = get_chains(B)
  w_chains = get_chains(W)

  # 5石連続は1つ以上ない
  fin(false) if b_chains.size > 1 || w_chains.size > 1

  # 白黒両方に5石連続はない
  fin(false) if b_chains.size.eql?(1) && w_chains.size.eql?(1)

  # 継続中（勝ち負けなし）の場合
  fin(true) if b_chains.size.eql?(0) && w_chains.size.eql?(0)

  # 白黒どちらかが勝っている
  bw = b_chains.size > 0 ? B : W
  bw_max = b_chains.size > 0 ? b_chains.first : w_chains.first

  # 黒勝ちの時、白は黒の数 -1（黒勝ちの時、黒白同じ数はない）
  fin(false) if bw.eql?(B) && bc.eql?(wc)
  
  # 白勝ちの時、白は黒は同じ数
  fin(false) if bw.eql?(W) && bc.eql?(wc + 1)

  # 勝った方は、１つ石を取り除くと５石連続しない状態がある（そうしないと途中で対戦が終了しているから）
  N.times do |i|
    N.times do |j|
      if @bord[i][j].eql?(bw)
        @bord[i][j] = '.'
        fin(true) if get_chains(bw).size.zero?
        @bord[i][j] = bw
      end
    end
  end
end

fin(false)
