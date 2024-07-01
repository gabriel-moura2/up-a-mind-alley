class Mind
  attr_accessor :cognition_level
  
  def initialize(learning_type, mood)
    @learning_type = learning_type
    @mood = mood
    @cognition_level = 0
  end

  # Define o quanto o aluno se beneficia de cada método de estudo
  def influence_study(content)
    puts "Influencing study on #{content}"
    f = %i[narration technique expression actuality criticism practice theory analysis]
    (f.index(content) / 7.0).round(2)
  end

  # Determina como eventos e interações impactam o humor do aluno
  def affects_mood(event)
    puts "affecting mood"
  end
end
    