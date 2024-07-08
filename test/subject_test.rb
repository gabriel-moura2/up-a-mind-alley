require 'test/unit'

class TestSubject < Test::Unit::TestCase
  def setup
    @s = Subject.new 'philosophy'
    @l = Student.new 'John'
    @l.personality = Personality.new
  end

  def test_apply_test
    @l.study(@s)
    @s.apply_test(@l)
    assert_equal 1, @s.get_grade
  end
end
    