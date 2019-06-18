MARK = ['o', 'x']
LINE = [
    [0, 14, 0, 18, 5.times.map{|c| [c, 0]}],
    [0, 18, 0, 14, 5.times.map{|c| [0, c]}],
    [0, 14, 0, 14, 5.times.map{|c| [c, c]}],
    [4, 18, 0, 14, 5.times.map{|c| [-c, c]}]
]

def fin(yes)
    puts yes ? "YES" : "NO"
    exit
end

def check(board)
    win = MARK.map{|m| [m, false]}.to_h
    lin = MARK.map{|m| [m, Array.new(19){Array.new(19)}]}.to_h
    19.times do |i|
        19.times do |j|
            LINE.each do |x1, x2, y1, y2, arr|
                next unless i.between?(x1, x2) && j.between?(y1, y2)
                MARK.each do |m|
                    if arr.all?{|x, y| board[i+x][j+y] == m}
                        win[m] = true
                        arr.each{|x, y| lin[m][i+x][j+y] = true}
                    end
                end
            end
        end
    end
    return win, lin
end

board = []
num = MARK.map{|m| [m, 0]}.to_h
19.times do |i|
    board[i] = gets.chomp
    MARK.each{|m| num[m] += board[i].count(m)}
end
diff = num['o'] - num['x']
fin(false) unless [0, 1].include?(diff)

win, lin = check(board)
fin(false) if MARK.all?{|m| win[m]}
fin(false) if win['o'] && diff != 1
fin(false) if win['x'] && diff != 0
fin(true) if MARK.none?{|m| win[m]}

19.times do |i|
    19.times do |j|
        MARK.each do |m|
            if lin[m][i][j]
                board[i][j] = '.'
                win2, _ = check(board)
                fin(true) if MARK.none?{|m| win2[m]}
                board[i][j] = m
            end
        end
    end
end

fin(false)

