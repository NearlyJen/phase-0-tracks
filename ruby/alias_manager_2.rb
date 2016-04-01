def change_vowel(i)
	case i
		when ' ' then ' ' 
		when 'a' then 'e'
		when 'e' then 'i'
		when 'i' then 'o'
		when 'o' then 'u'
		when 'u' then 'y'
		when 'y' then 'a'
		when 'z' then 'a'
	else 
		i.next
	end
end



#get the spy's first and last real names
puts "Please enter your real name, or 'quit' to leave this program."
real_name = gets.chomp.downcase

#reverse the order, so last name first
each_name = real_name.split(' ').reverse

#take each vowel and make it the next vowel, and each consonant and make it the next consonant.
# factor in spaces and edge cases
new_name = each_name.collect{|i| i.chars.map{|x| change_vowel(x)}}

#re capitalize the names and print out
alias_name = new_name.collect{|i| i.join.capitalize}
p alias_name.join(' ')







