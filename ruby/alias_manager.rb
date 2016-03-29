#get the users real name
puts "What is your real name?"
real_name = gets.chomp.downcase

#take the name and sub out the letters for new letters
name = real_name.tr('aeiou', 'eioua')
name = name.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
# make it an array and then capitalize each item in that array
name = name.split(' ').map( & :capitalize)
# reverse the things in the array
name = name.reverse
#make a string again
alias_name = name.join(' ')

#print it out
puts "You shall now be known as '#{alias_name}'"

#get the users real name
puts "What is your real name?"
real_name = gets.chomp.downcase

#take the name and sub out the letters for new letters
name = real_name.tr('aeiou', 'eioua')
name = name.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
# make it an array and then capitalize each item in that array
name = name.split(' ').map( & :capitalize)
# reverse the things in the array
name = name.reverse
#make a string again
alias_name = name.join(' ')

#print it out
puts "You shall now be known as '#{alias_name}'"

