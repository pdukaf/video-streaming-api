require 'rails_helper'

RSpec.describe 'Movies API', type: :request do
	let!(:movies) { create_list(:movie, 10) }
  let(:movie_id) { movies.first.id }

  describe 'GET/movies' do
  	before {get'/movies'}
  	it 'returns movies' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'should have right movies in the right order' do
      expect(movies.first.id).to eq(1)
    end
  end
end