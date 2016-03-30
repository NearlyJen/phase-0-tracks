def calculator(my_array)

	case my_array[1]
	when "+"
		answer =  my_array[0].to_i + my_array[2].to_i
		return answer
	when "-"
		answer =   my_array[0].to_i - my_array[2].to_i
		return answer
	when "*"
		answer =   my_array[0].to_i * my_array[2].to_i
		return answer
	when "/"
		answer =   my_array[0].to_i / my_array[2].to_i
		return answer
	else
		puts "Please enter a valid operator"
	end


end

 #p calculator(1,"*",7)

 #p calculator(3,"+",7)

 #p calculator(1,"/",7)

 #p calculator(3,"-",7)

calc_hash = Hash.new
choice = ""
until choice == 'done'
	puts "Do you have a new calculation? ('yes' or 'done')"
	choice = gets.chomp.downcase
	if choice == 'yes'

		puts "Please enter a calculation you'd like to perform"
 		choice = gets.chomp.split
 		p calculator(choice)
 		calc_hash[choice.to_sym] = [answer]
 	elsif choice == 'done'
 		p 'thanks for playing'
 		calc_hash.each do |choice, answer|
    		puts "#{choice}: #{answer}"
    	end
 		break
 	else 
 		p 'please enter yes or done'
 	end
 end
