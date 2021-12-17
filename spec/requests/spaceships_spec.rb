# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Spaceships', type: :request do
  describe 'GET /index' do
    it 'returns all Spaceships' do
      FactoryBot.create(:spaceship, name: 'Jupiter 2', crew: 6)
      FactoryBot.create(:spaceship, name: 'Apollo 11', crew: 4)

      get '/spaceships'

      expect(response).to have_http_status(:success)
      expect(Spaceship.count).to eq(2)
    end
  end
end
