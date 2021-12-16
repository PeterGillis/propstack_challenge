# frozen_string_literal: true

class Spaceship < ApplicationRecord
  has_many :crew_members
  validates :name, presence: true
  validates :crew, presence: true
end
