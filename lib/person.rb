# The Person class represents an individual with a name, personality, and relationships.
# 
# Attributes:
# - name [String]: The name of the person.
# - personality [Personality]: The personality of the person.
# - relationships [Hash{String => Relationship}]: The relationships of the person with other people.
#
# Methods:
# - initialize(name): Initializes a new Person object with the given name.
# - interact(person): Interacts with the given person.
# - to_s: Returns a string representation of the object.
#
# Examples:
#   person = Person.new("John")
#   person.personality = Personality.new(:happy)
#   person.interact(other_person)
#   puts person.to_s
class Person
  attr_accessor :name, :personality, :relationships

  # Initializes a new instance of the class.
  #
  # @param name [String] The name of the person.
  # @return [void]
  def initialize(name)
    @name = name
    @relationships = {}
  end

  # Interacts with the given person.
  #
  # @param [Person] person The person to interact with.
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