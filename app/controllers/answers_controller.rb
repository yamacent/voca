class AnswersController < ApplicationController

  def start
    @sentences = Sentence.where(id: 1..10)
  end

  def mark
    # s = ''
    # @sentences.each do |sentence|
    #   s += sentence.japanese + "\n"
    # end
    # render text: s
    render text: params.inspect
  end

end
