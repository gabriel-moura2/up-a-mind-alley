require './lib/person_builder'

class StudentBuilder < PersonBuilder
  def reset name
    @person = @person_factory.create_person 'student', name
  end

  def set_favorite s
    @person.knowledge_level[s] = 10
  end

  def to_s
    "#{@person.name} Builder"
  end
end