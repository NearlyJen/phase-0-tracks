# Release 0 - Design a class
# class Toon - this will build a new character for plaing in WoW
# will have a name (user defined)
# will be either Alliance or Horde (user defined)
# can choose from a list of races (user defined)
# will have a level
# methods:
# fight (or run and hide depending on level) - if you fight you gain a level.
# dance - makes your toon break into dance
# quest - go looking for things to do! level will go up by one
# can keep making new toons and playing with them
# see list of toons when done


# I made these global because I couldn't make them work otherwise but I don't
# know why and I'm going to work on it.
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
      puts "I'm not sure what you're saying. Let's go with 'Human' since you couldn't get this right."
      @race = 'Human'
    end
  end

  def fight_or_quest
    choice = " "
    until choice == 'quit'
      puts 'Would you like to dance, fight, quest, or quit?'
      choice = gets.chomp.downcase
      case choice
      when 'fight'
        fight
      when 'quest'
        quest
      when 'dance'
        dance
      when 'quit'
        puts "Bye #{@name}!"
      else
        puts "Please enter 'fight', 'dance', 'quest', or 'quit'."
      end
    end
  end

  def fight
    if @level <= 10
      @level += 1
      puts "You run and hide. Maybe quest and gain some levels? Current level: #{@level}"
    elsif @level <= 50
      puts "You bled, it was hard, but you won. Current level: #{@level}"
      @level += 1
    elsif @level <= 75
      puts "You looked at a Big Bad and he fell over dead. Have a level, though you don't really need it. Current level: #{@level}"
      @level += 1
    end
  end

  def quest
    if @level <= 10
      @level += 1
      puts "You go on a lame little quest gathering fruit, but you level up. Current level: #{@level}"
    elsif @level <= 50
      puts "You killed some stuff and got some loot. Plus, a level! Current level: #{@level}"
      @level += 1
    elsif @level <= 75
      puts "You poop gold and can kill with your pinky. You've done all of the quests. Current level: #{@level}"
      @level += 1
    end
  end

  def dance
    puts "#{@name} breaks out into a joyous-sexy-drunken dance. You go #{@name}."
  end
end

to_do = ' '
until to_do == 'quit'
  puts "Would you like to make a new toon? ('yes' or 'quit')"
  to_do = gets.chomp.downcase
  if to_do == 'yes'
    puts 'What would you like to name your new toon?'
    name = gets.chomp.capitalize

    puts "Would you like to play Alliance or Horde?"
    faction = gets.chomp.capitalize

    @character = Toon.new(name, faction)
    @character.choose_race
    puts "Ok, you have an awesome new toon named #{@character.name}, a member of the #{@character.faction} and a #{@character.race}."
    toon_arr = [@character.name, @character.faction, @character.race]
    toons.push(toon_arr)
    @character.fight_or_quest
  elsif to_do == 'quit'
    puts "Thanks for playing! You've made these toons."
    toons.each do |toon|
      p toon
    end
  else
    puts "Please type 'yes' or 'quit'"
  end
end
