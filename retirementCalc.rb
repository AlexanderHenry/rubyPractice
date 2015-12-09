def retirement

	puts "What is your current age?"
	age = gets.to_i
	puts "At what age would you like to retire?"
	preferredAge = gets.to_i

	year = Time.new

	retireIn = preferredAge - age

	currentYear = year.year
	retireYear = currentYear + retireIn

	puts "You have #{retireIn} years left until you can retire.\nIt's #{currentYear}, so you can retire in #{retireYear}."

end
retirement
