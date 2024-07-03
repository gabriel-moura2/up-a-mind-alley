class Personality
  # Initializes a new instance of the Mind class with the given learning type and mood.
  #
  # @return [void]
  def initialize
    @learning_type = %i[narration technique expression relevancy criticism practice theory analysis]
    @mood = :interested
    @cognition_level = 7
  end

  # Calculates the influence of the study based on the cognition level.
  #
  # @return [Float] The influence of the study, rounded to two decimal places.
  def influence_study
    (@cognition_level / 7.0).round(2)
  end

  def get_mood
    @mood
  end

  # Updates the mood based on the influence of the relationship.
  #
  # @param relationship [Relationship] The relationship to calculate the influence.
  # @return [void]
  def affects_mood relationship
    @mood = relationship.influence_mood
  end
end
    