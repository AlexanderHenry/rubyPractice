def interest

	puts "What is the principal amount?"
	principal = gets.to_f
	principalCurr = sprintf("%.2f", principal.to_s)
	puts "What is the rate of interest?"
	rate = gets.to_f
	puts "How many years do you plan to invest?"
	time = gets.to_s.chomp

	amount = principal * (1 + ((rate / 100) * time.to_f))
	amountCurr = sprintf("%.2f", amount.to_s)
	earnings = amount - principal
	earningsCurr = sprintf("%.2f", earnings.to_s)

	puts "After #{time} years at #{rate.to_f.round(1)}%, your $#{principalCurr} investment will be worth $#{amountCurr}, a gain of $#{earningsCurr}."

end
interest
