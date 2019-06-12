N = gets.strip.to_i
# EAST, WEST, SOUTH, NOTH
PROBS = gets.strip.split.map(&:to_f)

@map = Array.new(100) { Array.new(100) { false } }

@vx = [1, -1, 0,  0]
@vy = [0,  0, 1, -1]

@prob = 4.times.map { |i| PROBS[i] / 100 }

def dfd(x, y, n)
  return 0 if @map[y][x]
  return 1 if n.zero?

  @map[y][x] = true 
  res = 0.0
  4.times do |i|
    res += dfd(x + @vx[i], y + @vy[i], n - 1) * @prob[i] 
  end
  @map[y][x] = false

  return res
end


puts dfd(50, 50, N)
