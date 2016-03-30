#Release 2
def new(str1,str2,str3)
	my_array = []
	my_array.push(str1,str2,str3)
	return my_array
end

new(3, 'blue', 'dog')

def next_arr(arr, i)
	arr.push(i)
	return arr
end
	next_arr(["a", "b", "c", 1, 2], 3)
	next_arr(["1", "2", "3", 1, 2], "jen")


# Release 1
# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
my_array = []
p my_array

# Add five items to your array. Print the array.
my_array.push(1,2,3,4,5)
p my_array

# Delete the item at index 2. Print the array.
my_array.delete_at(2)
p my_array

# Insert a new item at index 2. Print the array.
my_array.insert(2,"jen")
p my_array

# Remove the first item of the array without having to refer to its index. Print the array.
my_array.shift
p my_array

# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

if my_array.include?("jen") == true
	puts "So totally true that this array has a jen"
else
	puts "no way is jen in here"
end

# Initialize another array that already has a few items in it.
# Add the two arrays together and store them in a new variable. Print the new array.
second_array = [9,7,5]

third_array = my_array + second_array

p third_array







