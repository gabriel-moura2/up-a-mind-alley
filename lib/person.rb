class Person
  attr_accessor :name, :personality, :relationships

  # Initializes a new instance of the class.
  #
  # @return [void]
  def initialize(name)
    @name = name
    @relationships = {}
  end

  # Interacts with the given person.
  #
  # @param [People] person The person to interact with.
  # @return [void]
  def interact person
    if relationships.key?(person.to_s)
      @relationships[person.to_s].interact(1)
      @personality.affects_mood(@relationships[person.to_s].influence_mood)
    end
  end

  # Returns a string representation of the object.
  #
  # @return [String] the string representation
  def to_s
    @name
  end
end