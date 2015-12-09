def ustoeuro
	
	puts "How many euros do you have?"
	euros = gets.to_f
	euroCurr = sprintf("%.2f", euros.to_s)
	puts "What is the exchange rate?"
	exRate = gets.to_f
	exRateCurr = sprintf("%.2f", exRate.to_s)
	dollars = (euros*exRate) / 100
	dollarsCurr = sprintf("%.2f", dollars.to_s)

	puts "Your #{euroCurr} euros will exchange at an exchange rate of #{exRateCurr}, giving you $#{dollarsCurr}."

end

ustoeuro

