class Student
  attr_accessor :name, :age, :knowledge_level, :personality, :development_level, :relationships

  def initialize
    @knowledge_level = {}
    @knowledge_level.default = 0
    @development_level = 5
    @relationships = {}
  end

  # Aumenta o nível de conhecimento em uma disciplina específica
  def study(subject, topic)
    puts "#{name} is studying #{subject}"
    content = subject.show_content(topic)
    knowledge_level[subject] += personality.influence_study(content)
  end

  # Modifica o nível de relacionamento com outro aluno
  def interact(student)
    puts "#{name} is interacting with #{student}"
    relationships[student].interact
  end

  # Avalia o conhecimento de um aluno em uma disciplina, impactando seu desenvolvimento e nível de conhecimento
  def do_test(subject)
    puts "#{name} is doing a test on #{subject}"
    (knowledge_level[subject] / subject.difficulty_level * 100).to_int
  end

  def to_s
    name
  end
end
