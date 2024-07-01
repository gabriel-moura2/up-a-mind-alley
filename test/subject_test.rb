require './lib/subject'
require './lib/student'
require 'test/unit'

class TestSubject < Test::Unit::TestCase
  def setup
    @s = Subject.new
    @s.name = 'Philosophy'
    @s.difficulty_level = 1
    @s.content['ethics'] = :tempus
    @l = Student.new
    @l.name = 'John'
    @l.knowledge_level[@s] = 0
  end

  def test_show_content
    assert_equal :tempus, @s.show_content('ethics')
  end

  def test_apply_test
    note = @s.apply_test(@l)
    assert_equal 0, note
  end
end
    