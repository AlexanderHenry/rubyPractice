def checkout

	puts "Please provide the first item name"
	item1 = gets.chomp
	puts "Please provide the price of the first item"
	price1 = gets.to_s.chomp
	puts "How many #{item1} would you like?"
        quantity1 = gets.to_i

	puts "Please provide the second item name"
	item2 = gets.chomp
	puts "Please provide the second item price"
	price2 = gets.to_s.chomp
	puts "How many #{item2} would you like?"
        quantity2 = gets.to_i

	puts "Please provide the third item name"
	item3 = gets.chomp
	puts "Please provide the third item price"
	price3 = gets.to_s.chomp
	puts "How many #{item3} would you like?"
	quantity3 = gets.to_i

	price1Curr = sprintf("%.2f", price1)
	price2Curr = sprintf("%.2f", price2)
	price3Curr = sprintf("%.2f", price3)

	item1total = price1.to_f * quantity1.to_f
	item2total = price2.to_f * quantity2.to_f
	item3total = price3.to_f * quantity3.to_f

	item1totalCurr = sprintf("%.2f", item1total.to_s)
	item2totalCurr = sprintf("%.2f", item2total.to_s)
	item3totalCurr = sprintf("%.2f", item3total.to_s)

	subtotal = item1total + item2total + item3total
	subtotalCurr = sprintf("%.2f", subtotal.to_s.chomp)
	tax = 5.5 / 100
	taxTotal = tax * subtotal
	taxTotalCurr = sprintf("%.2f", taxTotal.to_s.chomp)
	total = taxTotal + subtotal
	totalCurr = sprintf("%.2f", total.to_s.chomp)

	puts "Items:\n#{item1} (#{quantity1} at $#{price1} each, total of $#{item1totalCurr})\n#{item2} (#{quantity2} at $#{price2} each, total of $#{item2totalCurr})\n#{item3} (#{quantity3} at $#{price3} each, total of $#{item3totalCurr})\n\nSubtotal: $#{subtotalCurr}\nTax (5.5%): $#{taxTotalCurr}\nTotal: $#{totalCurr}"
	
	

end
checkout
