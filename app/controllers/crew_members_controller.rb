# frozen_string_literal: true

class CrewMembersController < ApplicationController
  def index
    @crew_members = CrewMember.all
    print 'hello'
  end

  def create
    @crew_members = CrewMember.create!(crew_member_params)
    # json_response(@crew_member, :created)
  end

  private

  def crew_member_params
    params.permit(:name, :age, :rank, :assignment)
  end
end
