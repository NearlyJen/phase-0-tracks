#place to store the name and alias pairs
spy_names = Hash.new
choice = " "

#method to change the letters
def change_letter(name)
	case name
		when ' ' then ' ' 
		when 'a' then 'e'
		when 'e' then 'i'
		when 'i' then 'o'
		when 'o' then 'u'
		when 'u' then 'y'
		when 'y' then 'a'
		when 'z' then 'a'
	else 
		name_cons = name.next
		case name_cons
			when 'a' then name_cons.next
			when 'e' then name_cons.next
			when 'i' then name_cons.next
			when 'o' then name_cons.next
			when 'u' then jname_cons.next
		else 
			name_cons = name.next
		end
	end
end


#runs until the user wants to quit
until choice == 'quit'
	puts "Do you need a new alias? ('yes' or 'quit')"
	choice = gets.chomp.downcase

	if choice == 'yes'

		#get the spy's first and last real names
		puts "Please enter your real name."
		real_name = gets.chomp.downcase
		
		#reverse the order, so last name first
		each_name = real_name.split(' ').reverse
		
		#take each vowel and make it the next vowel, and each consonant and make it the next consonant.
		# factor in spaces and edge cases
		new_name_array = each_name.collect{|i| i.chars.map{|x| change_letter(x)}}
		
		#re-capitalize the names, join them bck into a string instead of an array
		alias_name_array = new_name_array.collect{|i| i.join.capitalize}
		new_alias = alias_name_array.join(' ')
		
		#save to the hash and print
		spy_names[real_name.to_sym] = new_alias
		p "You: #{real_name} shall now be known as #{new_alias}"

	# when they're done, show them all of the names/aliases
	elsif choice == 'quit'
		#print out each pair in the hash as a sentence
		spy_names.each do |real_name, new_alias|
	    	puts "#{real_name}: #{new_alias}"
	    end
    else
    	puts "Please enter 'yes' to acquire a new alias, or 'quit' to exit this program"
    end
end






