def taxcalc
	
	puts "What is the state (Please use abbreviation)?"
	state = gets.to_s.downcase.chomp
	
	if state.length < 2 or state.length > 2 then
		puts "Please use the two letter state abbreviation."
		taxcalc
	end
	
	puts "What is the order amount?"
	order = gets.to_f
	orderCurr = sprintf("%.2f", order)
	
	stateHash = {"al"=> {"Alabama"=>4}, "ak"=>{"Alaska"=>0}, "az"=>{"Arizona"=>5.6}, 
				"ar"=>{"Arkansas"=>6.5}, "ca"=>{"California"=>7.5}, "co"=>{"Colorado"=>2.9},
				"ct"=>{"Connecticut"=>6.35}, "de"=>{"Delaware"=>0}, "fl"=>{"Florida"=>6}, 
				"ga"=>{"Georgia"=>4}, "hi"=>{"Hawaii"=>4}, "id"=>{"Idaho"=>6}, 
				"il"=>{"Illinois"=>6.25}, "in"=>{"Indiana"=>7}, "ia"=>{"Iowa"=>6}, 
				"ks"=>{"Kansas"=>6.5}, "ky"=>{"Kentucky"=>6}, "la"=>{"Louisiana"=>4}, 
				"me"=>{"Maine"=>5.5}, "md"=>{"Maryland"=>6}, "ma"=>{"Massachusetts"=>6.25}, 
				"mi"=>{"Michigan"=>6}, "mn"=>{"Minnesota"=>6.875}, "ms"=>{"Mississippi"=>7}, 
				"mo"=>{"Missouri"=>4.225}, "mt"=>{"Montana"=>0}, "ne"=>{"Nebraska"=>5.5}, 
				"nv"=>{"Nevada"=>6.85}, "nh"=>{"New Hampshire"=>0}, "nj"=>{"New Jersey"=>7},
				"nm"=>{"New Mexico"=>5.125}, "ny"=>{"New York"=>4}, 
				"nc"=>{"North Carolina"=>4.75}, "nd"=>{"North Dakota"=>5}, 
				"oh"=>{"Ohio"=>5.75}, "ok"=>{"Oklahoma"=>4.5}, "or"=>{"Oregon"=>0}, 
				"pa"=>{"Pennsylvania"=>6}, "ri"=>{"Rhode Island"=>7}, 
				"sc"=>{"South Carolina"=>6},"sd"=>{"South Dakota"=>4}, 
				"tn"=>{"Tennessee"=>7}, "tx"=>{"Texas"=>6.25}, "ut"=>{"Utah"=>4.7}, 
				"vt"=>{"Vermont"=>6}, "va"=>{"Virginia"=>4.3}, "wa"=>{"Washington"=>6.5}, 
				"wv"=>{"West Virginia"=>6}, "wi"=>{"Wisconsin"=>5}, "wy"=>{"Wyoming"=>4}
				}
	
	stateHash[state].each do |key, value|
		@stateRate = value
		@stateKey = key
	end
	
	if @stateRate > 0 then
		tax = ((@stateRate.to_f / 100) * order)
		taxWords = ", which has a tax rate of #{@stateRate.to_f}%, "
	else
		@stateRate = 0
		tax = 0
		taxWords = ", with no tax rate, "
	end

	total = (order.to_f + tax.to_f).to_s
	totalCurr = sprintf("%.2f", total)
	puts "An order of $#{orderCurr} in #{@stateKey.capitalize}" + "#{taxWords}" + "gives you a total of $#{totalCurr}."

end
taxcalc