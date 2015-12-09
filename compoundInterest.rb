def compound

	puts "What is the principal amount to invest?"
	principal = gets.to_s
	puts "How many years would you like to invest?"
	years = gets.to_f
	puts "What is the interest rate?"
	rate = gets.to_f / 100
	puts "How many times per year would you like to compound?"
	comp = gets.to_f

	exponent = comp * years
	squared = (1 + (rate / comp))

	i = 1
	i = i.to_i
	exponent = exponent.to_f
	squared = squared.to_f
	squaredCurr = sprintf("%.2f", squared.to_s)

	while i != exponent do
		squared = squared * squared
		i+=1
	end

	amount = (squared * principal.to_f).to_s
	
	principalCurr = sprintf("%.2f", principal)
	amountCurr = sprintf("%.2f", amount)

	puts "$#{principalCurr} invested at #{rate.round(1) * 100}% for #{years} years compounded #{comp} times per year is $#{amountCurr}"
end
compound
