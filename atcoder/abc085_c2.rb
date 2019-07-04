N, Y = gets.strip.split.map(&:to_i)

def fin(i, j, k)
  puts "#{i} #{j} #{k}"
  exit
end

(0..N).each do |i|
  (0..N).each do |j|
    k = N - (i + j)
    if k >= 0 && Y.eql?(i * 10000 + j * 5000 + k * 1000)
      fin(i, j, k)
    end
  end
end

fin(-1, -1, -1)
