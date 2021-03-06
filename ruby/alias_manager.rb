
#hash to store the real names and aliases
aliases = Hash.new
#empty string to hold the user selection
choice = ""
real_name = " "
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

			# MAKE THIS A METHOD
			#take the name and sub out the letters for new letters
			name = name.tr('aeiou', 'eioua')
				# MAKE A METHOD
		name = name.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')

			# MAKE THIS A METHOD
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
		#print out each pair in the hash as a sentence
		aliases.each do |real_name, alias_name|
	    	puts "#{real_name} is known as #{alias_name}"
	    end
    else
    	puts "Please enter 'yes' to acquire a new alias, or 'quit' to exit this program"
    end
end
