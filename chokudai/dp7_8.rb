N = gets.strip.to_i
R = N.times.map { gets.strip }

@salaries = Array.new(N) {0}

def get_salary(i)
  return @salaries[i] unless @salaries[i].zero?

  sum = 0
  R[i].split('').each_with_index do |r, j|
    if r.eql?('Y')
      sum += get_salary(j)
    end
  end 
  sum = 1 if sum.eql?(0)
  @salaries[i] = sum
end

puts N.times.map { |i| get_salary(i) }.inject(:+)
