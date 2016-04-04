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



class TalkingComputer

  def initialize
    puts "Engaging Infinite Improbability Drive... "
  end

  def avoid(str)
    puts "Guys, I am just pleased as punch to inform you that there are two thermo-nuclear missiles headed this way... if you don't mind, I'm gonna go ahead and take evasive action " if str == 'yes'
    puts "Sure thing fella! Switching over to manual control... good luck!" if str == 'no'
  end

  def personality_problems(int)
    puts "#{int}, yeah? I can even work out your personality problems to ten decimal places if it'll help."
  end

end

talking_computers = []

50.times { talking_computers << TalkingComputer.new }
talking_computers.each do |computer|
  computer.avoid('yes')
  computer.personality_problems(3)
end


