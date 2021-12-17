# frozen_string_literal: true

class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    render json: @missions
  end

  def create
    @missions = Mission.create!(mission_params)
    json_response(@mission, :created)
  end

  def show
    @mission = Mission.find(mission_params)
    render json: @mission
  end

  private

  def mission_params
    params.permit(:name, :description, :length, :start_date)
  end
end
