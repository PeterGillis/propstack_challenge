# frozen_string_literal: true

class CrewMembersController < ApplicationController
  def index
    @crew_members = CrewMember.all
    render json: @crew_members
  end

  def create
    @crew_member = CrewMember.create!(crew_member_params)
    json_response(@crew_member, :created)
  end

  def show
    @crew_member = CrewMember.find(crew_member_params)
    render json: @crew_member
  end

  private

  def crew_member_params
    params.permit(:name, :age, :rank, :assignment)
  end
end
