currentyear = 2016
num = 0

	print "How many employees will we be processing?"
	employees = gets.chomp.to_i

while num < employees do

	print "What is your name?"
	name=gets.chomp

	print "How old are you?"
	age=gets.chomp.to_i


	print "What year were you born?"
	yearborn=gets.chomp.to_i

	print "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	wantsbread=gets.chomp

	print "Would you like to enroll in the company’s health insurance? (y/n)"
	wantsinsurance=gets.chomp


	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire"

	elsif age != (currentyear - yearborn) && (wantsbread == "n" && wantsinsurance == "n")
		puts "Almost certainly a vampire."

	elsif age != (currentyear - yearborn) && (wantsbread == "n" || wantsinsurance == "n")
		puts "Probably a vampire"

	elsif age == (currentyear - yearborn) && (wantsbread == "y" || wantsinsurance == "y")
		puts "Probably not a vampire"

	else 
		puts "Results inconclusive."
	end

	num += 1
end