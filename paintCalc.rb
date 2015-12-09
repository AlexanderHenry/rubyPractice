def painting

	puts "What is the length of the room in feet?"
	length = gets.to_f
	puts "What is the width of the room in feet?"
	width = gets.to_f

	area = length * width

	if area == 0
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
