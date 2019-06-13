# @param {Integer} x
# @return {Integer}

RANGE_MIN = -2 ** 31
RANGE_MAX = 2 ** 31 - 1

def reverse(x)
  s = x.to_s.split('').reverse.join
  res = s.to_i
  unless s[-1].eql?('-')
    res = 0 if res > RANGE_MAX
  else
    res *= -1
    res = 0 if res < RANGE_MIN
  end    
  res
end

puts reverse(gets.strip.to_i)
