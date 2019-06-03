N, A, B, C, D = gets.strip.split.map(&:to_i)
S = gets.strip

if S[A..(C - 2)].match(/\#{2,}/)
  puts 'No'
  exit
end

if S[B..(D - 2)].match(/\#{2,}/)
  puts 'No'
  exit
end

if C < D
  puts 'Yes'
else
  puts S[B..(D-2)].match(/#\.{3,}\#/).nil? ? 'No' : 'Yes'
end


