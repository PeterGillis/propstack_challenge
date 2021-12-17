# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CrewMember, type: :model do
  context 'validation test' do
    it 'ensures name presence' do
      crew_member = CrewMember.new(age: 37, rank: 'captain', assignment: 'ground control').save
      expect(crew_member).to eq(false)
    end
  end
end
