require './lib/student'
require './lib/subject'
require './lib/personality'
require './lib/relationship'
require 'test/unit'

class TestStudent < Test::Unit::TestCase
  def setup
    @s = Student.new 'John'
    @s2 = Student.new 'Jane'
    @m = Subject.new 'philosophy'
    @s.personality = Personality.new
    @s2.personality = Personality.new
    @r = Relationship.new :good
    @s.relationships[@s2.to_s] = @r
    @s2.relationships[@s.to_s] = @r
  end
    
  def test_study_two_times
    @s.study(@m)
    @s.study(@m)
    assert_equal 2, @s.knowledge_level[@m.to_s]
  end

  def test_interact_same_student
    @s.interact(@s2)
    @s.interact(@s2)
    assert_equal 2, @s.relationships[@s2.to_s].friendship_level
    assert_equal 2, @s2.relationships[@s.to_s].friendship_level
  end

  def test_interact_diff_student
    @s.interact(@s2)
    @s2.interact(@s)
    assert_equal 2, @s.relationships[@s2.to_s].friendship_level
  end

  def test_do_test
    @s.study(@m)
    @s.do_test(@m)
  end
end