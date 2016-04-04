class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times { puts "Woof!"}
  end

  def roll_over
    puts 'rols over'
  end

  def dog_years(human_years)
    dog_years = human_years * 7
    puts "This dog is #{dog_years} in human years!"
  end

  def bed_sneak(bad_dog)
    puts "Your dog snuck in your bed while you were out." if bad_dog == "yes"
    puts "Your dog never sneaks into your bed while you are out. Good dog." if bad_dog == "no"
  end

end

fern = Puppy.new

fern.fetch('ball')
fern.speak(3)
fern.roll_over
fern.dog_years(7)
fern.bed_sneak("no")

