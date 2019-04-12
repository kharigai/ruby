@n, a, b, c = gets.strip.split.map(&:to_i)
@l = @n.times.map { gets.strip.to_i }

return 0 if @n.zero?

@t = []
@mp = []
def dfd(i, sum, mp)
  if i >= @n
    @t << sum
    @mp << mp
    return
  end
  dfd(i + 1, sum, mp)
  dfd(i + 1, sum + @l[i], mp + 10)
end

dfd(0, 0, 0)


def get_min_mp(mp)
  @l.map { |d| (d - mp).abs }.min
end

sum = 0
[a, b, c].each_with_index do |d|
  if i = @t.bsearch_index { |k| k == d }
    tmp = [@mp[i], get_min_mp(d)].min
    puts tmp
    sum += tmp
  else
    tmp = get_min_mp(d)
    puts tmp
    sum += tmp
  end
end

puts sum
