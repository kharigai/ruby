# H W
# maze0 '...'
# .
# mazeN '.X.'
# start_row start_col
# move_row []
# move_col []

def chmax(x, y) x > y ? x : y end

UNREACH = -1

H, W = gets.strip.split.map(&to_i)
MAZE = H.times.map { gets.strip }
START_ROW, START_COL = gets.strip.split.map(&:to_i)
MOVE_ROW = gets.strip.split.map(&:to_i)
MOVE_COL = gets.strip.split.map(&:to_i)

move_types_size = MOVE_ROW.size

map = Array.new(H) { Array.new(W) { UNREACH } }

# [[x0, y0], [x1, y1],...,[xN, yN]]
queue_y = []
queue_x = []

queue_y.push(START_ROW)
queue_x.push(START_COL)

map[START_ROW][START_COL] = 0

while queue.size > 0
  x = queue_x.shift
  y = queue_y.shift
  move_types_size.time do |i|
    next_x = MOVE_COL[i] + x
    next_y = MOVE_ROW[i] + y
    if next_x >= 0 && next_x < W &&
       next_y >= 0 && next_y < H &&
       map[next_y][next_x].eql?(UNREACH) &&
       MAIZ[next_y][next_x].eql?('.')
      queue_y.push(next_y)
      queue_x.push(next_x)
      map[next_y][next_x] = map[y][x] + 1
    end
  end  
end


res = 0
H.times do |i|
  W.times do |j|
    if MAZE[i][j].eql?('.') && map[i][j] >= 0
      puts "-1"
      return
    end
    res = chmax(map[i][j], res) unless map[i][j].eql?(UNREACH)
  end
end

puts res
