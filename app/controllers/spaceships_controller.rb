# frozen_string_literal: true

class SpaceshipsController < ApplicationController
  # before_action :set_spaceship, only: [:index, :show, :create]

  def index
    @spaceships = Spaceship.all
    render json: @spaceships
  end

  def create
    @spaceship = Spaceship.create!(spaceship_params)
    json_response(@spaceship, :created)
  end

  def show
    @spaceship = Spaceship.find(spaceship_params)
    render json: @spaceship
  end

  private

  def spaceship_params
    params.permit(:name, :crew)
  end

  # def set_spaceship
  #   @spaceship = Spaceship.find(spaceship_params)
  # end
end
