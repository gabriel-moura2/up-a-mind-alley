require 'test/unit'

class TestPersonality < Test::Unit::TestCase
  def setup
    @p = Personality.new
    @r = Relationship.new :conflict
  end

  def test_influence_study
    percent = @p.influence_study
    assert_equal 1, percent
  end

  def test_affects_mood
    @p.affects_mood(@r)
    assert_equal :angry, @p.get_mood
  end
end