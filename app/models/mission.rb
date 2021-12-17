# frozen_string_literal: true

class Mission < ApplicationRecord
  belongs_to :crew_member
  validates :name, presence: true
  validates :description, presence: true
  validates :length, presence: true
  validates :start_date, presence: true
end
