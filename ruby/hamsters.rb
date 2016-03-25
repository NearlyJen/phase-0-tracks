p "What is the name of your lovely hamster?"
name = gets.chomp

p "What is the approximate volume level of this gorgeous hamster on a scale from 1-10?"
volume = gets.chomp.to_i

p "How would you describe the fuzzy and fluffy fur color of your amazing hamster?"
fur = gets.chomp

p "True or False: Your super-hamster would make an AWESOME pet for someone else."
adopt = gets.chomp.downcase

if adopt == "true" || adopt == "yes" || adopt == "totally"
	 adoptme = true
else 
	 adoptme = false
end


p "How many years young is this freakishly youthful looking hamster?"
age = gets.chomp || nil
