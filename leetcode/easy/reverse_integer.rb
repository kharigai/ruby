# @param {Integer} x
# @return {Integer}
def reverse(x)
  return 0 if x > 2147483647
  s = x.to_s.split('').reverse.join
  res = s.to_i
  unless s[-1].eql?('-')
    res = 0 if res > 2147483647
  else
    res *= -1
    res = 0 if res < -2147483648
  end    
  res
end
