def party

	puts "How many people?"
	people = gets.to_i
	puts "How many pizzas do you have?"
	pizzas = gets.to_i
	puts "How many slices per pizza?"
	slices = gets.to_i

	totalSlices = slices * pizzas
	slicesPerPerson = totalSlices / people

	leftover = totalSlices % people

	puts "With #{people} people and #{pizzas} pizzas, you'll have #{totalSlices} slices!\nThat's #{slicesPerPerson} slices per person, with #{leftover} leftover slices."	

end
party
