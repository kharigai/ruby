A, B, C, D = gets.strip.split.map(&:to_i) 

L = C.lcm(D)

def num(x)
  x - x / C - x / D + x / L
end

puts num(B) - num(A - 1)
