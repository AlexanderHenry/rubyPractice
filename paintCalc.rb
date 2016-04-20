def painting

	puts "What is the length of the room in feet?"
	length = gets.to_f
	
	while length <= 0
		puts "Negative numbers aren't possible in this situation!"
		puts "What is the length of the room in feet?"
		length = gets.to_f
	end
	
	puts "What is the width of the room in feet?"
	width = gets.to_f
	
	while width <= 0
		puts "Negative numbers aren't possible in this situation!"
		puts "What is the width of the room in feet?"
		width = gets.to_f
	end
	
	area = length * width
		
	if area <= 0
		gal = 0
		puts "You don't have any paint to purchase!"
	else
		gal = area/350
		if gal <= 1
			grammar = "gallon"
		else
			grammar = "gallons"
		end
		puts "To cover #{area.to_i} square feet you'll need to purchase #{gal.ceil} #{grammar} of paint."
	end

end
painting
