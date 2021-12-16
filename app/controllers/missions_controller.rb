# frozen_string_literal: true

class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    print 'hello'
  end

  def create
    @missions = Mission.create!(mission_params)
    # json_response(@mission, :created)
  end

  private

  def mission_params
    params.permit(:name, :description, :length, :start_date)
  end
end
