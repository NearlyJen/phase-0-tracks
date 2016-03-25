p "What is the name of your lovely hamster?"
name = gets.chomp.capitalize

p "What is the approximate volume level of this gorgeous hamster on a scale from 1-10?"
volume = gets.chomp.to_i

p "How would you describe the fuzzy and fluffy fur color of your amazing hamster?"
fur = gets.chomp.downcase

p "True or False: Your super-hamster would make an AWESOME pet for someone else."
adopt = gets.chomp.downcase

if adopt == "true" || adopt == "yes" || adopt == "totally"
	 adoptme = true && goodpet = "awesome"

else 
	 adoptme = false && goodpet = "terrible"
end


p "How many years young is this freakishly youthful looking hamster?"
age = gets.chomp.to_i || nil

p "Interesting! It sounds like #{name} with the #{fur} fur would make a(n) #{goodpet} pet. It seems like #{volume} is the perfect noise level for a #{age} year-old hamster. Let's get to work finding them a new home!"