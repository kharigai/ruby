
def cut_bar(result_bar_unit, man_unit, current_bar_unit)
	if result_bar_unit <= current_bar_unit
		0
	elsif current_bar_unit < man_unit
		1 + cut_bar(result_bar_unit, man_unit, current_bar_unit * 2)
	else
		1 + cut_bar(result_bar_unit, man_unit, current_bar_unit + man_unit)
	end
end

puts cut_bar(2, 3, 1)
