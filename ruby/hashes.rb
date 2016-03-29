# get user input for name, age, theme, and if kids
#show the user what they have entered
#ask if they would like to update any information
#if they would, then ask whose data they would like to update
#get updated data
# print updated information

client_data = { }

puts "Welcome to your awesome client data storage program! What is the name of your client?"
name = gets.chomp
client_data[name] = name.to_sym

puts "What is their age?"
age = gets.chomp
client_data[age] = age.to_i

puts "What is their chosen theme?"
theme = gets.chomp
client_data[theme] = theme

puts "Do they have children? (y/n)"
kids = gets.chomp
client_data[kids] = kids

choice = " "
until choice == "no" 
puts "You've added #{name}, age #{age} who wants #{theme} and #{kids}. Would you like to update this information?"
choice = gets.chomp

if choice == "yes"
	puts "Would you like to update the name, age, theme, or if they have children?"
	update = gets.chomp
	case update
	when "name"
		puts "What is the new name of your client?"
		name = gets.chomp
		client_data[name] = name.to_sym
		puts "You've updated the name to #{name}"
	when "age"
		puts "What is their age?"
		age = gets.chomp
		client_data[age] = age.to_i
		puts "You've updated the age to #{age}"
	when "theme"
		puts "What is their chosen theme?"
		theme = gets.chomp
		client_data[theme] = theme
		puts "You've updated the theme to #{theme}"
	when "kids"
		puts "Do they have children? (y/n)"
		kids = gets.chomp
		client_data[kids] = kids
		puts "You've updated their kids status to #{kids}"
	else
		puts "Please enter a valid field"
	end
else choice == "no" || nil
	puts "Awesome. Have a great day!"
end
end



