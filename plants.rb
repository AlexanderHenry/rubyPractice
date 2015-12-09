def watering

	days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]	

	puts "How many days will you take care of the plants?"
	watchLength = gets.to_i
	puts "What day is today?"
	day = gets.to_s

	(0..watchLength).step(2) do |days|
		puts "The box plants and stoop plants should be watered #{days}."
	end
	(0..watchLength).step(4) do |days|
		puts "The herbs should be watered #{days}."
	end
	(0..watchLength).step(7) do |days|
		puts "The hanging plant should be watered on #{days}."
	end

end
watering
