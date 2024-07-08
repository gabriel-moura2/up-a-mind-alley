require './lib/person'

# The Teacher class represents a teacher who can teach a specific subject.
# Teachers inherit from the Person class and have a name and a subject they teach.
#
# @example
#   teacher = Teacher.new("John Doe", subject)
#   teacher.apply_test(student)
class Teacher < Person
    # @!attribute [rw] subject
    #    @return [Subject] The subject that the teacher teaches.
    attr_accessor :subject

    # Initializes a new Teacher object with the given name and subject.
    #
    # @param name [String] The name of the teacher.
    # @param subject [Subject] The subject that the teacher teaches.
    # @return [void]
    def initialize name, subject
        super name
        @subject = subject
    end

    # Applies a test to a student.
    #
    # @param student [Student] The student to apply the test to.
    # @return [void]
    def apply_test student
        @subject.apply_test(student)
    end
end