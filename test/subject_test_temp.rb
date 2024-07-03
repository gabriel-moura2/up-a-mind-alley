require './lib/subject'
require './lib/student'
require 'test/unit'

class TestSubject < Test::Unit::TestCase
  def setup
    @s = Subject.new 'Philosophy'
    @s.difficulty_level = 1
    @s.content['ethics'] = :theory
    @l = Student.new
    @l.name = 'John'
    @l.knowledge_level[@s] = 1
  end

  def test_show_content
    assert_equal :theory, @s.show_content('ethics')
  end

  def test_apply_test
    @s.apply_test(@l)
    assert_equal 1.25, @s.difficulty_level
  end
end
    