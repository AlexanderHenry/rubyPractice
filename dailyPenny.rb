def daily

	puts "You're going to start with a penny, then get that plus two additional pennies every day.  How much money would you make? Enter an amount of days to find out!"
	days = gets.to_i
	penny = 1
	max = 1

	while max != (days+1) do
		penny = (2*penny)-1
		max += 1
	end

	dollars = sprintf(%.2f, penny / 100)

	puts "In #{days} days you would earn $#{dollars}!"
end
daily
