class Relationship
  attr_accessor :friendship_level, :compatibility

  def initialize
    @friendship_level = 0
  end

  # Modifica o nível de relacionamento entre dois alunos
  def interact
    puts "Interacting"
    @friendship_level += 1
  end

  # Define o quanto a interação com outro aluno impacta o humor
  def influence_mood
    puts "Influencing mood"
    4
  end
end
    