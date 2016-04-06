# Release 0 - Design a class
# class WarcraftToon - this will build a new character for plaing in WoW
# will have a name
# will be either Alliance or Horde
# can choose from a list of races
# will have a level
# methods:
# fight (or run and hide depending on level) - if you fight you gain a level. if you run and hide you lose one
# dance - makes your toon break into dance
# quest - go looking for things to do! For fun, questing will make your level go up by one

toons = []
$horde_races = ['Pandaren', 'Goblin', 'Blood Elf', 'Orc', 'Tauren', 'Troll', 'Undead']
$alliance_races = ['Pandaren', 'Worgen', 'Draenei', 'Night Elf', 'Dwarf', 'Gnome', 'Human']
# declaring Toon class for making all of the new Toons
class Toon
  attr_accessor :name, :race, :faction, :level
  def initialize(name, faction)
    @name = name
    @faction = faction
    @level = 0
    @race
  end

  def choose_race
    if @faction == 'Horde'
      puts "What race would you like #{@name} to be? Horde races are: #{$horde_races}"
      @race = gets.chomp.capitalize
    elsif @faction == 'Alliance'
      puts "What race would you like #{@name} to be? Alliance races are: #{$alliance_races}"
      @race = gets.chomp.capitalize
    else
      puts "I'm not sure"
    end
  end

  def fight_quest(choice)
    if choice == 'fight' && @level <= 10
      puts "You run and hide. Live to fight another day. Maybe quest and gain some levels?"
    elsif choice == 'fight' && @level <=75
      puts "you bled, it was hard, but you won."
      @level += 1
    else
      puts "You should see the other guy"
      @level += 1
    end
  end

  def dance
    puts "#{@name} breaks out into a joyous-sexy-drunken dance. You go #{@name}."
  end
end

puts 'What should we name your new toon?'
name = gets.chomp.capitalize

puts "Would you like to play Alliance or Horde?"
faction = gets.chomp.capitalize

character = Toon.new(name, faction)
character.choose_race
puts "#{character.name}: #{character.faction}: #{character.race}"

puts "Would you like to fight or quest?"
choice = gets.chomp.downcase
character.fight_quest(choice)
