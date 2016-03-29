# get user input for name, age, theme, and if kids
#show the user what they have entered
#ask if they would like to update any information
#if they would, then ask whose data they would like to update
#get updated data
# print updated information

client_data = { 
	client_name: nil,
	client_age: nil,
	client_theme: nil,
	client_kids: nil
}

# NOTE: I know all of these repeated actions should be put into methods but I can't quite work out how to do it yet. 
puts "Welcome to your awesome client data storage program! What is the name of your client?"
name = gets.chomp
client_data[:client_name] = name.to_sym

puts "What is their age?"
age = gets.chomp
client_data[:client_age] = age.to_i

puts "What is their chosen theme?"
theme = gets.chomp
client_data[:client_theme] = theme

puts "Do they have children? (y/n)"
kids = gets.chomp.downcase
kids = kids == 'y' ? true : false
client_data[:client_kids] = kids

choice = " "
until choice == "no" 
	puts "You've added #{name}, age #{age} who wants #{theme} and that they responded '#{kids}' to having children. Would you like to update this information?"
	choice = gets.chomp

	if choice == "yes"
		puts "Would you like to update the name, age, theme, or 'kids'?"
		update = gets.chomp
		case update
		when "name"
			puts "What is the new name of your client?"
			name = gets.chomp
			client_data[:client_name] = name
			puts "You've updated the name to #{name}"
		when "age"
			puts "What is their age?"
			age = gets.chomp
			client_data[:client_age] = age.to_i
			puts "You've updated the age to #{age}"
		when "theme"
			puts "What is their chosen theme?"
			theme = gets.chomp
			client_data[:client_theme] = theme
			puts "You've updated the theme to #{theme}"
		when "kids"
			puts "Do they have children? (y/n)"
			kids = gets.chomp
			client_data[:client_kids] = kids
			puts "You've updated their kids status to #{kids}"
		else
			puts "Please enter a valid field"
		end
	else choice == "no" || nil
		puts "Awesome. Have a great day!"
	end
end




