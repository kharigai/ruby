_N, K = gets.strip.split.map(&:to_i)
puts gets.strip.split.map(&:to_i).select { |n| n >= K }.size
