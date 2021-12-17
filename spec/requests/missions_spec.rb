require 'rails_helper'

RSpec.describe "Missions", type: :request do
  describe "GET /index" do
    let(:spaceship) {FactoryBot.create(:spaceship, name: 'Jupiter 2', crew: 6)}
    let(:crew_member) {FactoryBot.create(:crew_member, name: 'Peter', age: 37, rank: 'captain', assignment: 'ground control', spaceship_id: spaceship.id)}
    it 'returns all Missions' do
      FactoryBot.create(:mission, name: 'Ground Control', description: 'To Major Tom', length: 3, start_date: '2021-12-16', crew_member_id: crew_member.id)
      FactoryBot.create(:mission, name: 'Take your protein pills', description: 'Put your helmet on', length: 2, start_date: '2021-12-15', crew_member_id: crew_member.id)

      get '/missions'

      expect(response).to have_http_status(:success)
      # byebug
      # expect(JSON.parse(response.body)).to eq(2)
    end
  end
end
