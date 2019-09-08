# n >= 0

@cash = [0, 1]

def fib(i)
  return i if i < 2
  @cash[i] ||= fib(i - 2) + fib(i - 1)
end

n = gets.strip.to_i
puts fib(n)
