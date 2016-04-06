# builds class for Santas
class Santa
  def initialize(gender, ethnicity)
    puts 'Initializing Santa instance ...'
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    @age = 0
  end

  def speak
    puts 'Ho Ho Ho! Haaaaapy Holidays!'
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
end

jen = Santa.new('female', 'multi')
jen.speak
jen.eat_milk_and_cookies('ginger snap')

santas = []
gender_options = ['boy', 'girl', 'man', 'woman', 'trans', 'undefined', 'fluid']
ethnicity_options = ['white', 'black', 'brown', 'pinkish', 'greenish', 'purplish', 'dalak']

gender_options.length.times do |x|
  santas << Santa.new(gender_options[x], ethnicity_options[x])
end

