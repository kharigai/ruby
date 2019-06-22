N = gets.strip.to_i

X = []
Y = []

N.times do 
  x, y = gets.strip.split.map(&:to_i)
  X << x
  Y << y
end

sumx = Array.new(N - 1) { 0 } 
sumy = Array.new(N - 1) { 0 } 

(N - 1).times do |i|
  sumx[i] = X[i + 1] - X[i]
  sumy[i] = Y[i + 1] - Y[i]
end 

resx = 0
resy = 0

sumx.sort!
sumy.sort!

x = sumx[0]
y = sumy[0]

sumx.size.times do |i|
  resx += 1 if x != sumx[i]
  resy += 1 if y != sumy[i]
  x = sumx[i]
  y = sumy[i]
end

resx = 1 if resx.zero?
resy = 1 if resy.zero?

puts [resx, resy].max
