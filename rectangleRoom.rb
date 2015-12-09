def rectangleRoom

	puts "What is the length of the room in feet?"
	length = gets.to_f.round(2)
	puts "What is the width of the room in feet?"
	width = gets.to_f.round(2)

	sqft = length * width
	sqmtr = sqft * 0.09290304

	puts "You entered the dimensions of #{length.round(2)} feet by #{width.round(2)} feet.\nThe area is:\n#{sqft.to_f.round(2)} square feet\n#{sqmtr.to_f.round(3)} square meters"

end
rectangleRoom
