s = gets.strip.to_i

h = {}
h[s] = 1

2.upto(1000000) do |i|
  s = s.even? ? s / 2 : (s * 3) + 1
  unless h[s].nil? 
    puts i
    break
  else
    h[s] = i
  end
end
