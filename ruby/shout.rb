# shout module - my first module!
module Shout
  def self.yell_angrily(words)
    words + '!!!' + ' :('
  end

  def self.yelling_happily
    puts 'Wahoo!'
  end
end

Shout.yell_angrily('goddamnit')
Shout.yelling_happily
