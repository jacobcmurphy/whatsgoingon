class GroupMemberController < ApplicationController
  def new
  end

  def create
  	if signed_in?
  		gm = GroupMember.new(member_params)
  		gm.save
  		current_user << gm
  	end
  end

  def delete
  end

  private
  def member_params
  	params.permit(:user_id, :group_id, :friend_id)
  end
end
