require './lib/person'

class Student < Person
  attr_accessor :knowledge_level, :development_level

  # Initializes a new instance of the Student class.
  #
  # @return [void]
  def initialize name
    super name
    @knowledge_level = {}
    @knowledge_level.default = 0
    @development_level = 5
  end

  
  # Updates the knowledge level of the student for a given subject.
  #
  # @param subject [Subject] The subject to study.
  # @return [void] This method does not return any value.
  def study subject
    knowledge_level[subject.to_s] += personality.influence_study
  end

  # Applies a test to the student.
  #
  # @param subject [Subject] The subject to apply the test to.
  # @return [void]
  def do_test subject
    subject.apply_test(self)
  end
end
