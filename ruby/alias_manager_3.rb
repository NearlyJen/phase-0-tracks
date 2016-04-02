# When writing pseudocode, the object is to break down the problem into small steps, but the key is that these steps should mimic the lines you write when you work through your initial solution.

# There are three best practices I want you to keep in mind when you write pseudocode. First, capitalize language-specific keywords (IF, ELSE, BREAK, etc). Second, write your pseudocode line-by-line as you would write your actual code. Just make sure it’s in plain English (no symbols, code-specific terminology). Finally, indent your pseudocode as you would your actual code. This means indenting code blocks, conditionals, and the like whenever written.


#place to store the name and alias pairs
spy_names = Hash.new
choice = " "

def next_letter(name)
cipher = {'a' => 'e',  'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
   if cipher.has_key?(name)
     name = cipher[name]
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






