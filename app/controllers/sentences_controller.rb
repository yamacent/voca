class SentencesController < ApplicationController

  before_action :set_sentence, only: [:show, :edit, :update]

  def index
    @sentences = Sentence.all
  end

  def show
  end

  def edit
  end

  def update
    if @sentence.update(sentence_params)
      redirect_to @sentence, notice: 'Sentence was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

  def sentence_params
    params.require(:sentence).permit(:english, :japanese)
  end

  def set_sentence
    @sentence = Sentence.find(params[:id])
  end
end
