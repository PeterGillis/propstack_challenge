# frozen_string_literal: true

class SpaceshipsController < ApplicationController
  def index
    @spaceships = Spaceship.all
  end

  def create
    @spaceships = Spaceship.create!(spaceship_params)
    # json_response(@spaceship, :created)
  end

  private

  def spaceship_params
    params.permit(:name, :crew)
  end
end
