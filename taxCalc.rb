def taxcalc

	puts "What is the order amount?"
	order = gets.to_f
	orderCurr = sprintf("%.2f", order)
	puts "What is the state?"
	state = gets.to_s.chomp

	if state == "WI" or state == "Wisconsin" or state == "wi" or state == "Wi" then
		rate = 5.5
		tax = ((rate.to_f / 100) * order)
		taxWords = ", which has a tax rate of #{rate.to_f}%, " 
	else
		rate = 0
		tax = 0
		taxWords = " "
	end

	total = (order.to_f + tax.to_f).to_s
	totalCurr = sprintf("%.2f", total)
	puts "An order of $#{orderCurr} in #{state}" + "#{taxWords}" + "gives you a total of $#{totalCurr}."

end
taxcalc
