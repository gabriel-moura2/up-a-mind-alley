require './lib/person_factory'

class PersonBuilder
  def initialize name
    @person_factory = PersonFactory.new
    reset name
  end

  def set_personality p
    @person.personality = p
  end

  def set_relationship p, r
    @person.relationships[p] = r
  end

  def get_result
    @person
  end
end