def coinflip
	points = 0.to_i

	puts "Heads or Tails?"
	response = gets.to_s.chomp.downcase

	chance = ["heads", "tails"]
	result = chance.sample.to_s.downcase

	puts "You chose #{response}, the flip was #{result}."
	puts response != result ? "Not a winner!" : "Nice win! Keep playing!"
	
	until response != result

		puts "Heads or Tails?"
		response = gets.to_s.chomp
		result = chance.sample.to_s

		puts "You chose #{response}, the flip was #{result}."

		puts response != result ? "Not a winner!" : "Nice win! Keep playing!"
		points +=1
	end

		puts "You had #{points} points!"
end
coinflip
