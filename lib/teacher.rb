require './lib/person'

class Teacher < Person
    attr_accessor :subject

    def initialize name, subject
        super name
        @subject = subject
    end

    def teach subject
        @subject = subject
    end

    def apply_test student
        @subject.apply_test(student)
    end
end