class GroupMembersController < ApplicationController
  def new
  end

  def create
  	if user_signed_in?
      group = Group.find(params[:group_id].to_i)
      if group.user_id.to_i == current_user.id
  		  gm = group.group_members.create(friend_id: params[:friend_id], group_id: params[:group_id], user_id: current_user.id)
      end
      redirect_to group
  	end
  end

  def destroy
    if user_signed_in?
      GroupMember.find(params[:mid].to_i).destroy
      redirect_to Group.find(params[:gid].to_i)
    end
  end

  private
  def member_params
    params[user_id: current_user.id]
  	params.permit(:friend_id, :group_id, :user_id)
  end
end
