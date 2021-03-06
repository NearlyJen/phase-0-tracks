# Encrypt method
# 1. get the first letter of the string
# 2. increase it by one position in the alphabet
# 3. concatenate the encrypted character into an encrypted string
# 4. move to the next letter in the string
# 5. repeat the step 2-3 with each letter in succession

# Decrypt method
# 1. find the index of the first letter of the encrypted string in the alphabet
# 2. find the character at that index - 1 in the alphabet
# 3. concatenate that character to an decrypted string
# 4. repeat for each character in the encrypted string


#downcase became redundant after adding it to user input
#NOTE!!! We did walk through doing this using a while statement and the length of the passed string! It would've run through the same
#loop for as long as an incremented variable was less than or equal to the length of the string. We liked this better in the end. 
def encrypt(str)
  encrypted_str = ""
  str.downcase.each_char do |c|
    next_char =
      if c == 'z'
        'a'
      elsif c == ' '
        ' '
      else
        c.next
      end
    encrypted_str += next_char
  end
  encrypted_str
end

# puts encrypt 'abc'
# puts encrypt 'zed'

#downcase became redundant after adding it to user input
def decrypt(str)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  decrypted_str = ""
  str.downcase.each_char do |c|
    if c == ' '
      decrypted_str += ' '
    else
      index_in_alphabet = alphabet.index(c)
      decrypted_str += alphabet[index_in_alphabet - 1]
    end
  end
  decrypted_str
end

# puts decrypt 'bcd'
# puts decrypt 'afe'

#Release 4
# puts decrypt(encrypt("The duck flies at midnight"))
#The return from the encrypt method is a string, that immediately gets passed
#to the decrypt method as an arugment. The return value from the decrypt method
#is then passed to puts.

# Release 5
# Ask the user whether they want to encrypt or decrypt
# Ask them to enter their password
# Pass their password into the right method based on their choice
# Print the results to the screen

puts "Would you like to encrypt or decrypt your password?"
choice = gets.chomp.downcase

puts "Please enter your password"
password = gets.chomp.downcase

message =
  if choice == 'encrypt'
    encrypt password
  elsif choice == 'decrypt'
    decrypt password
  else
    puts "Please enter either 'encrypt' or 'decrypt' to process your password"
  end

puts message