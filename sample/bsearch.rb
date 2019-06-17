def bsearch(ary, tgt)
  return -1 if ary.nil? || ary.size.zero?

  l = 0
  r = ary.size - 1

  res = -1
  while l <= r
    c = (l + r) / 2
    if ary[c].eql?(tgt)
      res = c
      break
    end
    l = c + 1 if tgt > ary[c]
    r = c - 1 if tgt < ary[c]
  end
  
  res 
end

if __FILE__ == $0
  puts bsearch(nil, 1)
  puts bsearch([], 1)
  puts bsearch([1, 2, 3], 1)
  puts bsearch([1, 2, 3], 2)
  puts bsearch([1, 2, 3], 3)

  puts bsearch([1, 2, 3], 0)
  puts bsearch([1, 2, 3], 4)

  puts bsearch([-3, -2, -1], -3)
  puts bsearch([-3, -2, -1], -2)
  puts bsearch([-3, -2, -1], -1)

  puts bsearch([-3, -2, -1], -4)
  puts bsearch([-3, -2, -1], 0)
end
