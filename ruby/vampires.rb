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


# if age is equal to current_year minus year_born && (is willing to eat garlic bread || get insurance)
# print out "Probably not a vampire"

 currentyear = 2016


if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"

elsif age != (currentyear - yearborn) && (wantsbread == "n" && wantsinsurance == "n")
	puts "Almost certainly a vampire."

elsif age != (currentyear - yearborn) && (wantsbread == "n" || wantsinsurance == "n")
	puts "Probably a vampire"

elsif age == (currentyear - yearborn) && (wantsbread == "y" || wantsinsurance == "y")
	puts "Probably not a vampire"

else puts "Results inconclusive."

end