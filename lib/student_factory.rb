class StudentFactory
    attr_accessor :students
    def create_student name
        students << Student.new name
    end

    def main
        s = create_student
        s.name = 'John'
    end
end