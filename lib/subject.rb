class Subject
  attr_accessor :name, :difficulty_level, :content

  def initialize
    @difficulty_level = 1
    @content = {}
  end

  # Exibe informações sobre um tópico específico
  def show_content(topic)
    puts "Showing content for #{topic}"
    content[topic]
  end

  # Avalia o conhecimento do aluno em um tópico específico
  def apply_test(learner)
    puts "Applying test on #{name}"
    learner.do_test(self)
  end

  def to_s
    name
  end
end