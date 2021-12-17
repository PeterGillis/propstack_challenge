# frozen_string_literal: true

class Mission < ApplicationRecord
  belongs_to :crew_member
  validates_presence_of :name, :description, :start_date
end
