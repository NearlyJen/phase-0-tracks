# builds class for Santas
class Santa
  def speak
    puts 'Ho Ho Ho! Haaaaapy Holidays!'
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def initialize
    puts 'Initializing Santa instance ...'
  end
end

jen = Santa.new
jen.speak
jen.eat_milk_and_cookies('ginger snap')
