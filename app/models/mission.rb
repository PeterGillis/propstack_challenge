# frozen_string_literal: true

class Mission < ApplicationRecord
  belongs_to :crew_member
end
