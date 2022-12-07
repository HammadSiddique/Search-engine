require 'rails_helper'

describe 'Articles', type: :feature do
  title = Faker::Movie.title
  body = Faker::Lorem.paragraph(sentence_count: 5)

  it 'valid with valid data' do
    article = Article.new(title: title, body: body)
    expect(article).to be_valid
  end

  it 'is not valid without title' do
    article = Article.new(body: body)
    expect(article).to_not be_valid
  end

  it 'is not valid without body' do
    article = Article.new(title: title)
    expect(article).to_not be_valid
  end
end