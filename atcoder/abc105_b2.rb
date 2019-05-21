CP = 4
DP = 7

N = gets.strip.to_i

is_exist = false
((N / CP) + 1).times do |i|
  rem = N - (i * CP)
  if rem >= 0
    if (rem % DP) == 0
      is_exist = true
      break
    end
  else
    break
  end
end
puts is_exist ? 'Yes' : 'No'
