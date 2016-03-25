p "What is the name of your lovely hamster?"
name = gets.chomp.capitalize

p "What is the approximate volume level of this gorgeous hamster on a scale from 1-10?"
volume = gets.chomp.to_i

	if volume >= 5
		volume = "really super loud while you're sleeping"
	else
		volume = "so quiet you think they may be dead"
	end

p "How would you describe the fuzzy and fluffy fur color of your amazing hamster?"
fur = gets.chomp.downcase

p "True or False: Your super-hamster would make an AWESOME pet for someone else."
adopt = gets.chomp.downcase

	if adopt == "true" || adopt == "yes" || adopt == "totally"
		 adopt = true 

	elsif adopt == "false" || adopt == "nope" || adopt == "no way"
		 adopt = false
	end

	if adopt == true
		goodpet = "awesome" 
		result = "adoption"
	elsif adopt == false
		goodpet = "terrible" 
		result = "euthanasia"
	end

p "How many years young is this freakishly youthful looking hamster?"
age = gets.chomp.to_i || nil

	if age > 5
		age = "A hamster on the verge of death"
	elsif age > 2
		age = "A hamster in the prime of its life"
	else 
		age = "An itty bitty baby hamster"
	end

p "Interesting! It sounds like #{name} with the beautiful #{fur} fur would make a(n) #{goodpet} pet. #{age} is always #{volume}. Let's talk more about #{result}!"