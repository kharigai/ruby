n, m = gets.strip.split.map(&:to_i)

# 老人x2(=6) は、子供+大人(=6) に置き変えられる
# 老人が1, 0 のときだけを考えればOK

# a: adult count, c: child count, p: person number, f: foot number
def dfd(a, o, c, p, f)
  if p == 0
    return f.zero? ? [a, o, c] : nil
  elsif f < 0
    return nil
  end

  res = nil
  [[1, 0, 2], [0, 1, 4]].each do |ap, cp, fp|
    res = dfd(a + ap, o, c + cp, p - 1, f - fp)
    break res unless res.nil?
  end
  return res
end


res = dfd(0, 0, 0, n, m)
if res.nil?
  res = dfd(0, 1, 0, n - 1, m - 3)
end
puts res.nil? ? "-1 -1 -1" : res.join(' ')


