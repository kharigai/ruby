N, M, X, Y = gets.strip.split.map(&:to_i)
xs = gets.strip.split.map(&:to_i)
ys = gets.strip.split.map(&:to_i)

Z = ys.min

do_war = true
if xs.all? { |x| x < Z } &&
   ys.all? { |y| y >= Z } &&
   (X < Z && Z <= Y)
  do_war = false
end

puts do_war ? 'War' : 'No War'
