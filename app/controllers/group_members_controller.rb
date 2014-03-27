class GroupMembersController < ApplicationController
  def new
  end

  def create
  	if user_signed_in?
      group = Group.find(params[:group_id].to_i)
  		gm = group.group_members.create(friend_id: params[:friend_id], group_id: params[:group_id], user_id: current_user.id)
      redirect_to group
  	end
  end

  def delete
  end

  private
  def member_params
    params[user_id: current_user.id]
  	params.permit(:friend_id, :group_id, :user_id)
  end
end
