class SentencesController < ApplicationController
  def index
    @sentences = Sentence.all
  end

  def show
    render text: "show route. id: #{params[:id]}"
  end
end
