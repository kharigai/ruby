mony = 3.tims gets.strip.to_i
cake_price = gets.strip.to_i 
mony -= cake_price

donut_price = gets.strip.to_i 
puts mony >= donut_price ?  mony % donut_price : mony

