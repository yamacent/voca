class Answer
  # include ActiveModel::Model

  # attr_accessor :questions
  # attr_accessor :sentence, :answer
  #
  # def initialize(attr = {})
  #   if !attr.empty?
  #   s = choice_sentence
  #   @id = s.id
  #   @japanese = s.japanese
  # end
  def self.choice_sentence
    id = rand(Sentence.count) + 1
    Sentence.find(id)
  end

  def self.mark(user_answer: '', correct_answer: '')
    user_answer == correct_answer
  end

end
