class Relationship
  attr_accessor :friendship_level, :compatibility

  def initialize(compatibility)
    @friendship_level = 0
  end

  def interact level
    @friendship_level += level
  end

  def influence_mood
    if compatibility == :good
      :happy
    else
      :sad
    end
  end
end
    