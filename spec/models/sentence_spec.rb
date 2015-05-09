require 'rails_helper'

describe Sentence do
  it 'have a English sentence' do
    s = Sentence.new(english: 'english', japanese: '日本語')
    expect(s.english).to eq 'english'
  end
  it 'have a Japanese sentence' do
    s = Sentence.new(english: 'english', japanese: '日本語')
    expect(s.japanese).to eq '日本語'
  end
end
