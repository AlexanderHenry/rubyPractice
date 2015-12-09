def madLib
	puts "Provide three nouns separated commas"
	nouns = gets.split(",")

	puts "Provide three verbs separated by commas"
	verbs = gets.split(",")

	puts "Provide three adjectives separated by commas"
	adjectives = gets.split(",")

	puts "Provide two adverbs separated by commas"
	adverbs = gets.split(",")

	puts "The #{adjectives[0]} #{nouns[0]} #{adverbs[0]} #{verbs[0]} on the #{adjectives[1]} #{verbs[1]}ing #{nouns[1]}.\nThen the #{nouns[0]} #{adverbs[1]} #{verbs[1]} into the #{adjectives[2]} #{nouns[2]}."
end
madLib
