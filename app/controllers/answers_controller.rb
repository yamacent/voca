class AnswersController < ApplicationController

  def start
    @sentence = Answer.choice_sentence
  end

  def mark
    @user_answer = params[:answer]
    @sentence = Sentence.find(params[:id])
    correct_answer = @sentence.english
    @result = Answer.mark(user_answer: @user_answer,
      correct_answer: correct_answer)

    update_count(@sentence, @result)
    unless @sentence.save
      render text: 'save faild.'
    end

  end

  private

  def update_count(sentence, result)
    if sentence.count
      try = sentence.count.try
      correct = sentence.count.correct
    else
      try = 0
      correct = 0
    end

    try += 1
    correct += 1 if result

    sentence.count = Count.new(try: try, correct: correct)
  end

end
