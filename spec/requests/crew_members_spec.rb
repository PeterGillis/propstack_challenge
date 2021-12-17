require 'rails_helper'

RSpec.describe "CrewMembers", type: :request do
  describe "GET /index" do
    let(:spaceship) {FactoryBot.create(:spaceship, name: 'Jupiter 2', crew: 6)}
    it 'returns all CrewMembers' do
      FactoryBot.create(:crew_member, name: 'Peter', age: 37, rank: 'captain', assignment: 'ground control', spaceship_id: spaceship.id)
      FactoryBot.create(:crew_member, name: 'Karen', age: 32, rank: 'Admiral', assignment: 'Boss', spaceship_id: spaceship.id)

      get '/crew_members'

      expect(response).to have_http_status(:success)
      # byebug
      # expect(JSON.parse(response.body).size).to eq(2)
    end
  end
end
