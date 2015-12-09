def simpleMath
	puts "What is the first number?"
	first = gets.to_f
	puts "What is the second number?"
	second = gets.to_f

	add = first + second
	subtract = first - second
	multiply = first * second
	divide = first / second

	puts "#{first} + #{second} = #{add.to_f.round(2)}\n
#{first} - #{second} = #{subtract.to_f.round(2)}\n
#{first} * #{second} = #{multiply.to_f.round(2)}\n
#{first} / #{second} = #{divide.to_f.round(2)}"
end
simpleMath
