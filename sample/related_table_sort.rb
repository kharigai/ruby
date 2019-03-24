@tables = {
	"ref01" => [],
	"ref02" => [],
	"ref03" => ["ref04"],
	"ref04" => [],
	"base"  => ["ref01", "ref02", "sub01"],
	"sub02" => ["ref04"],
	"sub01" => ["ref02", "ref03", "sub02"],
}

@pos_table = []

def add_table(table) 
	return if @pos_table.include?(table)

	if @tables[table].size > 0
		@tables[table].each do |ref|
			add_table(ref)
		end
		@pos_table << table
	else
		@pos_table << table
	end
end	


@tables.each do |table, _refs|
	add_table(table)
end

@pos_table.each do |table|
	puts table
end
