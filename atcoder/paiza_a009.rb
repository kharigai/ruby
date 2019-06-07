H, W = gets.strip.split.map(&:to_i)
a = H.times.map { gets.strip }

c = 0
x = 0
y = 0
v = 'r' 
while (x >= 0 && x < W) && (y >= 0 && y < H)
  c += 1
  p = a[y][x]
  case v
  when 'r'
    case p
    when "\\"
      v = 'd'
    when "/"
      v = 'u'
    end

  when 'l'
    case p
    when "\\"
      v = 'u'
    when "/"
      v = 'd'
    end

  when 'd'
    case p
    when "\\"
      v = 'r'
    when "/"
      v = 'l'
    end

  when 'u'
    case p
    when "\\"
      v = 'l'
    when "/"
      v = 'r'
    end
  end

  case v
  when 'r'
    x += 1
  when 'l'
    x -= 1
  when 'd'
    y += 1
  when 'u'
    y -= 1
  end
end

puts c
