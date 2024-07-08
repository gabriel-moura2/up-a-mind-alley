require './lib/student_builder'
require './lib/persistence'

class Game
  def initialize
    @p = Persistence.new
    @objects = @p.load
  end
  
  def stats person
    p = @objects.find { |o| o.to_s == person }
    { name: p.to_s, personality: p.personality }
  end

  def add obj
    @objects << obj
  end

  def select name
    @objects.find { |o| o.to_s == name }
  end

  def list
    @objects.each { |o| yield o }
  end

  def build role, name
    case role
    when 'student'
      StudentBuilder.new name
    end
  end
end