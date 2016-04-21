def prompt_for_slices
	puts "How many slices per pizza?"
	slices = gets.to_i
end

def prompt_for_pizzas
	puts "How many pizzas do you have?"
	pizzas = gets.to_i
end

def prompt_for_people
	puts "How many people?"
	people = gets.to_i
end

def party
	people = prompt_for_people
	
	while people <= 0
		puts "Negative values don't make sense!"
		people = prompt_for_people
	end

	pizzas = prompt_for_pizzas

	while pizzas <= 0
		puts "If you don't have any pizzas, then why are you using this app?"
		pizzas = prompt_for_pizzas
	end

	slices = prompt_for_slices

	while slices < 2

		puts "There can't be negative slices!" if slices < 0
		puts "That's the entire pie!" if slices == 0
		puts "Is half of the pizza even a slice?" if slices == 1

		slices = prompt_for_slices
	end

	totalSlices = slices * pizzas
	slicesPerPerson = totalSlices / people

	leftover = totalSlices % people

	puts "With #{people} people and #{pizzas} pizzas, you'll have #{totalSlices} slices!\nThat's #{slicesPerPerson} slices per person, with #{leftover} leftover slices."	

end
party
