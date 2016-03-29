
#hash to store the real names and aliases
aliases = Hash.new
#empty string to hold the user selection
choice = ""

# run this until they want to be done getting new names
until choice == 'quit'
	puts "Do you need a new alias? ('yes' or 'quit')"
	choice = gets.chomp.downcase

	if choice == 'yes'
		
		#get the users real name
		puts "What is your real name?"
		real_name = gets.chomp
		
			#downcase it here so that the symbol stays capitalized
			name = real_name.downcase
			#take the name and sub out the letters for new letters
			name = name.tr('aeiou', 'eioua')
			name = name.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
			
			# make it an array and then capitalize each item in that array
			name = name.split(' ').map( & :capitalize)
			
			# reverse the things in the array
			name = name.reverse
			
			#make a string again
			alias_name = name.join(' ')
			aliases[real_name.to_sym] = alias_name
		
		#print it out
		puts "You shall now be known as '#{alias_name}'"
	
	# when they're done, show them all of the names/aliases
	elsif choice == 'quit'
		if aliases[:realname] == nil
			puts "You have no saved aliases."
		else #print out each pair in the hash as a sentence
			aliases.each do |real_name, alias_name|
	    		puts "#{real_name} is known as #{alias_name}"
	    	end
    	end
    else
    	puts "Please enter 'yes' to acquire a new alias, or 'quit' to exit this program"
    end
end
