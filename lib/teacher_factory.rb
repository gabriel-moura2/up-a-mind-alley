class TeacherFactory
    def create_teacher name, subject
        Teacher.new name, subject
    end
end