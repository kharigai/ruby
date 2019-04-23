# 0: black, 1: white
s = gets.strip

def chkmin(a, b) a < b ? a : b end

b2w = 0
w2b = 0

s.split('').each_with_index do |c, i|
  if i.even?
    if c == '1'
      b2w += 1
    else
      w2b += 1
    end
  else
    if c == '0'
      b2w += 1
    else
      w2b += 1
    end
  end
end

puts chkmin(b2w, w2b)

  
