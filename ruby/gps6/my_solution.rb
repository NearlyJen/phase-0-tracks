# Virus Predictor

# I worked on this challenge [by myself, due to scheduling mishap].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative is allowing the program to look outside itself for files that it needs.
# in this case, the file is in the same directory, but in the same way we tell and html
# file where to find the css that it needs, we require_relative to indicate additional files holding
# information that we need.
#
#Release 3:
# State Data is a hash whose values are hashes. I can see that STATE_DATA is available to
# Virus_Predictor and is all caps so I think it is a constant - the data will stay the same
#
# Release 7 - if you move Private above Virus effects, it can't be "seen"

require_relative 'state_data'

class VirusPredictor
  # method to initialize an instance of the virus predictor which takes
  # a state, population density, and population as arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # this method calls two additional (private) methods. First the predicted deaths method
  # and then the speed of spread method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # a private method which takes the density of a population and uses that
  # to determine the number of predicted deaths by way of taking a
  # set fraction and multiplying it b the population, reducing to nearest integer.

def predicted_deaths
  # predicted deaths is solely based on population density
  deaths_num = 0
  how_many = { '200' => 0.4, '150' => 0.3, '100' => 0.2, '50' => 0.1, '0' => 0.05 }

  how_many.each do |density, rate|
    if @population_density >= how_many[density].to_i
      deaths_num = (@population * rate).floor
    end
  end
  print "#{@state} will lose #{deaths_num} people in this outbreak"
end

  # a private method which uses population density to determine how fast the disease will spread
  # by way of higher density populations spreading at a faster rate.
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    how_fast = { '200' => 0.5, '150' => 1, '100' => 1.5, '50' => 2, '0' => 2.5 }

    how_fast.each do |density, rate|
      speed += rate if @population_density >= density.to_i
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each_key do |state|
  VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# -- The top levvel hash uses rockets to indicate that what comes next is a key. The 'interior' hashes use colons.
# -- Using both makes the hash more readable.
# What does require_relative do? How is it different from require?
# -- require relative is allowing the program to look outside itself for files that it needs.
# -- in this case, the file is in the same directory, but in the same way we tell and html
# -- file where to find the css that it needs, we require_relative to indicate additional files holding
# -- information that we need. I'm not entirely clear how it differs from require.
# What are some ways to iterate through a hash?
# -- You can go through each value, each key, or each key value pair.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# -- it seems like making instance variables means needing to pass less around? Fewer arguments?
# What concept did you most solidify in this challenge?
# -- that I still have a haard time iterating through things and using variables.
#-- also, I get  classes a little better and what belongs in a class, as well as what doesnt.
# -- if it doesn't describe the state or action of a class it doesn't go in there!