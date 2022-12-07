require 'rails_helper'

describe 'Searches', type: :feature do
  session_id = SecureRandom.urlsafe_base64(16)
  before(:each) do |tmp|
    50.times do
      Search.create(
        query: "title#{tmp}",
        session_id: session_id
      )
    end
  end

  it 'should have a search' do
    visit '/search'
    expect(page).to have_content('Search')
  end
end