# - 白と黒の石は同じか黒が1つ多い
# - 白と黒両方が勝つことはない
# - 5石連続は1つ（2つはない）
# - 勝った方は、１つ石を取り除くと５石連続しない（そうしないと途中で対戦が終了しているから）

CHAIN = 5
N = 19
W = "x"
B = "o"

LINE = [
  [0, N - CHAIN, 0, N - 1, CHAIN.times.map { |i| [i, 0] }],          # 右
  [0, N - 1, 0, N - CHAIN, CHAIN.times.map { |i| [0, i] }],          # 下
  [0, N - CHAIN, 0, N - CHAIN, CHAIN.times.map { |i| [i, i] }],      # 斜め右下
  [CHAIN - 1, N - 1, 0, N - CHAIN, CHAIN.times.map { |i| [-i, i] }], # 斜め左下
]

@bord = N.times.map { gets.strip }

def fin(yes)
  puts yes ? "YES" : "NO"
  exit
end

def is_win(bw)
  win = false
  N.times do |i|
    N.times do |j|
      LINE.each do |x1, x2, y1, y2, ary|
        next unless i.between?(x1, x2) && j.between?(y1, y2)
        if ary.all? { |x, y| @bord[i+x][j+y].eql?(bw) }
          win = true
          break  
        end
      end
      break if win
    end
    break if win
  end
  win
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
  b_win = is_win(B)
  w_win = is_win(W)

  # 白黒両方勝ちはない
  fin(false) if b_win && w_win

  # 継続中（勝ち負けなし）の場合
  fin(true) if !b_win && !w_win

  # 白黒どちらかが勝っている
  bw = b_win ? B : W

  # 黒勝ちの時、白は黒の数 -1（黒勝ちの時、黒白同じ数はない）
  fin(false) if bw.eql?(B) && bc.eql?(wc)
  
  # 白勝ちの時、白は黒は同じ数
  fin(false) if bw.eql?(W) && bc.eql?(wc + 1)

  # 勝った方は、１つ石を取り除くと５石連続しない状態がある（そうしないと途中で対戦が終了しているから）
  N.times do |i|
    N.times do |j|
      if @bord[i][j].eql?(bw)
        @bord[i][j] = '.'
        fin(true) unless is_win(bw)
        @bord[i][j] = bw
      end
    end
  end
end

fin(false)
