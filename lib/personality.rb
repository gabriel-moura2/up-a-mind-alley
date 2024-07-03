class Personality
  attr_accessor :mood, :cognition_level
  
  # Initializes a new instance of the Mind class with the given learning type and mood.
  #
  # @return [void]
  def initialize
    @learning_type = %i[narration technique expression actuality criticism practice theory analysis]
    @mood = :interested
    @cognition_level = 7
  end

  # Calculates the influence of the study based on the cognition level.
  #
  # @return [Float] The influence of the study, rounded to two decimal places.
  def influence_study
    (@cognition_level / 7.0).round(2)
  end

  def affects_mood mood
    @mood = mood
  end
end
    