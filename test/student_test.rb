require './lib/student'
require './lib/subject'
require './lib/relationship'
require './lib/mind'
require 'test/unit'

class TestStudent < Test::Unit::TestCase
  def setup
    @s = Student.new
    @s.name = 'John'
    @s2 = Student.new
    @s2.name = 'Jane'
    @m = Subject.new
    @m.name = 'Philosophy'
    @m.content['moral'] = :theory
    @s.personality = Mind.new nil, nil
    @r = Relationship.new
    @s.relationships[@s2] = @r
    @s2.relationships[@s] = @r
  end
    
  def test_study_two_times
    @s.study(@m, 'moral')
    @s.study(@m, 'moral')
    assert_equal 1.72, @s.knowledge_level[@m]
  end

  def test_interact_same_student
    @s.interact(@s2)
    @s.interact(@s2)
    assert_equal 2, @s.relationships[@s2].friendship_level
    assert_equal 2, @s2.relationships[@s].friendship_level
  end

  def test_interact_diff_student
    @s.interact(@s2)
    @s2.interact(@s)
    assert_equal 2, @s.relationships[@s2].friendship_level
  end

  def test_do_test
    @s.study(@m, 'moral')
    note = @s.do_test(@m)
    assert_equal 86, note
  end
end