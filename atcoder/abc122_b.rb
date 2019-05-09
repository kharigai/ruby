AGCT = 'AGCT'

def chkmax(a, b) a > b ? a : b end

s = gets.strip

count = 0
res = 0 
s.each_char do |c|
  if AGCT.include?(c)
    count += 1
  else
    res = chkmax(res, count)
    count = 0
  end
end
puts chkmax(res, count)
