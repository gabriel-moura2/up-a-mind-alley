require './lib/student'

class PersonFactory
  def create_person role, name
    case role
    when 'student'
      Student.new name
    when 'professor'
      Professor.new name
    end
  end
end
    