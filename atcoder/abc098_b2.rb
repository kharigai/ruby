N = gets.strip.to_i
S = gets.strip

def chmax(a, b) a > b ? a : b end


def f(x, y)
  c = 0
  x.split('').uniq.each do |n|
    c += 1 if y.count(n) > 0
  end
  c
end

res = 0
(N - 1).times do |i|
  res = chmax(f(S[0..i], S[(i + 1)..-1]), res)
end
puts res
