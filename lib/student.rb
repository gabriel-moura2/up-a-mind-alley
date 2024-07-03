require './lib/person'

# The Student class represents a student who can study subjects and take tests.
# Students inherit from the Person class and have a name, knowledge level, and development level.
# 
# Attributes:
# - name [String]: The name of the student.
# - personality [Personality]: The personality of the student.
# - knowledge_level [Hash{String => Integer}]: The knowledge level of the student for each subject.
# - development_level [Integer]: The development level of the student.
# - relationships [Hash{String => Relationship}]: The relationships of the student with other people.
#
# Examples:
#   student = Student.new("Alice")
#   student.study(math_subject)
#   student.do_test(science_subject)
class Student < Person
  attr_accessor :knowledge_level, :development_level

  
  # Initializes a new Student object with the given name.
  #
  # @param name [String] The name of the student.
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
