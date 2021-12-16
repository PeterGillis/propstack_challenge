# frozen_string_literal: true

class CrewMember < ApplicationRecord
  belongs_to :spaceship
  validates_presence_of :name, :age, :rank, :assignment
end
