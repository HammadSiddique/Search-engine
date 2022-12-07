require 'rails_helper'

describe 'Articles', type: :feature do
  before(:each) do |heading|
    20.times do
      Article.create(
        title: "title#{heading}",
        body: Faker::Lorem.paragraph(sentence_count: 5)
      )
    end
  end

  it 'should have a title' do
    visit '/'
    expect(page).to have_content('title')
  end

  it 'should have a body' do
    visit '/'
    expect(page).to have_content('body')
  end
end