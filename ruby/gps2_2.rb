# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: take string and split it, take array and use as hash keys
# set default
# print the list to the console
# output: hash keys and default values

# Method to add an item to a list
# input: item name and optional quantity ( 'carrots', 2), and list
# steps:
# add the information to the hash
# output: confirmtion of add

# Method to remove an item from the list
# input: item name and list
# steps:
# remove item from hash
# output: confirmation of removal

# Method to update the quantity of an item
# input: item name and new quantity, and list
# steps:
# look up key and change value
# output: confirm update

# Method to print a list and make it look pretty
# input: list name
# steps:
# print key: value - alphabetized - on their own lines
# output: pretty list

def new_list(string)
   initial_list = Hash.new
   string.split(' ').each do |i|
    initial_list[i] = 1
   end
   initial_list
   print(initial_list)
end

def add_item(item, quantity=1, list)
  list[item] = quantity
  puts "Added #{quantity} #{item} to #{list}."
end

def remove_item(item, list)
  list.delete(item)
  puts "Removed #{item} from #{list}."
end

def update_item(item, quantity, list)
  list[item] = quantity
  puts "Updated #{item} to #{quantity}"
end

def print(list)
  puts "Your groceries:"
  list.each_pair { |item, quantity| puts "#{item}: #{quantity}" }
end

groceries = new_list('carrots apples pizza')
add_item('oranges', 6, groceries)
remove_item('carrots', groceries)
update_item('oranges', 2, groceries)
print(groceries)


# It's easier and faster for me to build if my pseudocode is well written
# The information seemed ideal for a hash, I'm not sure what the downside is
# A method returns whatever the last statement is or whatever you tell it to return
# you can pass in strings, integers, etc. and also arrays and other methods
# You can pass information in the parameters
# Um, this was tough for me because I kept thinking in terms of user input which isn't
# always going to be in the schope of what i'm working on at all. But that was hard,
# not factoring in user exeperience / input.