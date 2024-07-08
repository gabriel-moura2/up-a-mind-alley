class Relationship
  attr_accessor :friendship_level, :compatibility

  def initialize(compatibility)
    @friendship_level = 0
    @compatibility = compatibility
  end

  def interact level
    @friendship_level += level
  end

  def influence_mood
    if @compatibility == :conflict
      return :angry
    elsif @compatibility == :identical
      return :curious
    end
    :bored
  end
end
    