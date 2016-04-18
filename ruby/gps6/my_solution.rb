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
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # a private method which takes the density of a population and ises that
  # to determine the number of predicted deaths by way of taking a
  # set fraction and multiplying it b the population, reducing to nearest integer.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # a private method which uses population density to determine how fast the disease will spread
  # by way of higher density populations spreading at a faster rate.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section