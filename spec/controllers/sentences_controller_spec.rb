require 'rails_helper'

describe SentencesController do

  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'loads all of the sentences into @sentences' do
      sentence1, sentence2 = Sentence.create!, Sentence.create!
      get :index
      expect(assigns(:sentences)).to match_array([sentence1, sentence2])
    end
  end

  describe 'GET #show' do
    it 'renders the show template' do
      sentence1 = Sentence.create!
      get :show, id: 1
      expect(response).to render_template('show')
    end
  end

  describe 'GET #edit' do
    it 'renders the edit template' do
      Sentence.create!
      get :edit, id: 1
      expect(response).to render_template('edit')
    end
  end

  describe 'PATCH #update' do
    it 'redirect to the sentence_path' do
      s = Sentence.create!
      patch :update, id: 1,
            sentence: { id: 1, english: s.english, japanese: s.japanese }
      expect(response).to redirect_to(s)
    end
  end
end
