# Release 0 - Design a class
# class WarcraftToon - this will build a new character for plaing in WoW
# will have a name
# will be either Alliance or Horde
# can choose from lists of both classes and races
# will have a level
# methods:
# fight (or run and hide depending on level) - if you fight you gain a level. if you run and hide you lose one
# dance - makes your toon break into dance
# quest - go looking for things to do! FOr fun, questing will make your level go up by one

toons = []


# declaring Toon class for making all of the new Toons
class Toon
  attr_accessor :name
  def initialize(name, faction)
    @name = name
    @faction = faction
    @level = 0
    puts "You are making a new toon named #{name}, a member of the #{faction}!"
  end

  def dance
    puts "#{@name} breaks out into a joyous-sexy-drunken dance. You go #{@name}"
  end
end

puts 'What should we name your new toon?'
name = gets.chomp

puts "Would you like to play Alliance or Horde?"
faction = gets.chomp

name = Toon.new(name, faction)
name.dance
