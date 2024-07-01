require './lib/mind'
require './lib/relationship'
require 'test/unit'

class TestMind < Test::Unit::TestCase
  def setup
    @m = Mind.new nil, nil
    @r = Relationship.new
  end

  def test_influence_study
    percent = @m.influence_study(:theory)
    assert_equal 0.86, percent
  end

  def test_affect_mood
    @m.affect_mood(@r)
  end
end