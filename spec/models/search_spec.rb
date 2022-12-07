require 'rails_helper'

describe 'Searches', type: :feature do
  session_id = SecureRandom.urlsafe_base64(16)

  it 'is valid with valid data' do
    search = Search.new(query: 'is this a good query?', session_id: session_id)
    expect(search).to be_valid
  end

  it 'is not valid without query' do
    search = Search.new(session_id: session_id)
    expect(search).to_not be_valid
  end

  it 'is not valid without session_id' do
    search = Search.new(query: 'is this working?')
    expect(search).to_not be_valid
  end
end