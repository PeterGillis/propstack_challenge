# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Spaceship, type: :model do
  context 'validation test' do
    it 'ensures crew presence' do
      spaceship = Spaceship.new(name: 'Jupiter 2').save
      expect(spaceship).to eq(false)
    end
  end
end
