# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mission, type: :model do
  context 'validation test' do
    it 'ensures description presence' do
      mission = Mission.new(name: 'Ground Control', length: 3, start_date: '2021-12-16').save
      expect(mission).to eq(false)
    end
  end
end
