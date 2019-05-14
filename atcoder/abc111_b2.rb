N = gets.strip.to_i
puts 1.upto(9).map { |i| i * 111 }.find { |i| i >= N }
