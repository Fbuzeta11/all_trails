require 'nokogiri'
require 'open-uri'

	require_relative "./trail.rb"
	require_relative "./hiker.rb"


continue = true

puts "Welcome! I will help you find the best park for hiking. Whats your name?"

while (continue)

	
		puts "What country would you like to search? (us) "

		country = gets.chomp

		puts "What state would you like to search? (georgia) "

		state = gets.chomp

		puts "What city would you like to search? (atlanta) "

		city = gets.chomp


		site = "https://www.alltrails.com/"+country+"/"+state+"/"+city
		puts site
		page = Nokogiri::HTML(open(site))
	

places = []
			page.css(".styles-module__trailCard___2oHiP").each do |card|
				places << Trail.new(card.css(".styles-module__name___3T41O").text,
				 card.css(".styles-module__diff___22Qtv").text,
				 card.css(".styles-module__info___1Mbn6").text,  #!/usr/bin/env 
				 card.css(".styles-module__description___QlXBP").text 
				)
				puts card.css(".styles-module__name___3T41O").text
			end


puts "Enter the you would like to check, (1-10)"
index = gets.chomp

#hiker = Hiker.new(country, state, city)
puts "you chose trail #{index}:"
places[(index.to_i-1)].display




puts "would you like to see another trail? (yes or no)"
continue = gets.chomp
if (continue == "yes")
	continue = true
	puts "pick a trail (1-10)"
else 
	continue = false
end
end
