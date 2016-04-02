# find out if the user needs a new alias or wants to quit
# IF they want a new alias, then get their real name
# take their real name and split it into separate words, and then reverse the order of those words
# make lowercase so easier to match strings
# each vowel in the name should become the next vowel
# each consonant in the name should become the next consonant
# IF the name has a letter "z", that should be a 'b'
# the names should be reacapitalized and put back into name strings
# real names and aliases should be saved as keys and values in a hash
# tell the user what their new alias is
# ask they user if they would like to get another alias
# if the user is done, do the very insecure thing of telling them everyones names and aliases

#place to store the name and alias pairs
spy_names = Hash.new
choice = " "

def next_letter(name)
cipher = {'a' => 'e',  'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
   if cipher.has_key?(name)
     name = cipher[name]
    elsif 
     name == 'z'
     name = 'b'
    elsif 
     cipher.has_key?(name.next)
     name = name.next.next
    else
     name.next
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
    new_name_array = each_name.collect{|i| i.chars.map{|x| next_letter(x)}}
    
    #re-capitalize the names, join them bck into a string instead of an array
    alias_name_array = new_name_array.collect{|i| i.join.capitalize}
    new_alias = alias_name_array.join(' ')
    
    #save to the hash and print
    spy_names[real_name.to_sym] = new_alias
    p "#{real_name} shall now be known as #{new_alias}"

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
