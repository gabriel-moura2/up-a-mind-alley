class Subject
  # Initializes a new instance of the class.
  #
  # @param name [String] The name of the subject.
  # @return [void]
  def initialize(name)
    @name = name
    @grade = 1
  end

  
  # Applies a test to a student and prints the result.
  #
  # @param student [Student] The student to apply the test to.
  # @return [void] This method does not return any value.
  def apply_test student
    if student.knowledge_level[@name] >= @grade
      puts "#{student.name} passed the test on #{@name}"
    else
      puts "#{student.name} failed the test on #{@name}"
    end
  end

  # Returns the string representation of the object.
  #
  # @return [String] the string representation
  def to_s
    @name
  end
end