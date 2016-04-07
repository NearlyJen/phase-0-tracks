# # shout module - my first module!
# module Shout
#   def self.yell_angrily(words)
#     words + '!!!' + ' :('
#   end

#   def self.yelling_happily
#     puts 'Wahoo!'
#   end
# end

# Shout.yell_angrily('goddamnit')
# Shout.yelling_happily


# new mixin type Shout module
module Shout
  def yell_angrily(words)
    puts words + '!!!' + ' : ('
  end

  def yelling_happily
    puts 'Wahoo!'
  end
end

class Coach
  include Shout
end

class Teacher
  include Shout
end

jen = Coach.new
jen.yelling_happily
jen.yell_angrily("Grr ")

theron = Teacher.new
theron.yelling_happily
theron.yell_angrily("Goddamnit ")
