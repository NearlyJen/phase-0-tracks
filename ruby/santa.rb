santas = []
gender_options = ['male', 'female', 'dolphin', 'computer', 'trans', 'fluid']
ethnicity_options = ['white', 'green', 'brown', 'pinkish', 'greenish', 'dalak', 'purplish']

# builds class for Santas
class Santa
  #reader not really necessary but it's on the rubric
  attr_reader :age, :gender, :ethnicity
  attr_accessor :age, :gender, :ethnicity

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

  def celebrate_birthday
    @age += 1
    puts "Santa is now #{@age}! Happy Birthday!"
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(-1, reindeer_name)
    puts @reindeer_ranking
  end
end

#driver code releases 0 - 3
jen = Santa.new('female', 'multi')
jen.speak
jen.eat_milk_and_cookies('ginger snap')
puts jen.gender
puts jen.ethnicity
jen.get_mad_at('Dasher')
jen.celebrate_birthday

gender_options.length.times do |x|
  santas << Santa.new(gender_options[x], ethnicity_options[x])
end

# release 4
50.times do |x|
  x = Santa.new(gender_options.sample, ethnicity_options.sample)
  x.age = Random.rand(140)
  puts "Yay! There is a new Santa. It's a #{x.ethnicity} #{x.gender} who is #{x.age} years old!"
end
