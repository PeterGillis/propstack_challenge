# frozen_string_literal: true

class Spaceship < ApplicationRecord
  has_many :crew_members
  validates_presence_of :name, :crew
end
