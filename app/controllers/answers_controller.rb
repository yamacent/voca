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
    # render text: [@user_answer, correct_answer, @result].inspect
  end

end
