class GroupMembersController < ApplicationController
  def new
  end

  def create
  	if user_signed_in?
      group = Group.find(params[:group_id].to_i)
      if group.user_id.to_i == current_user.id
  		  gm = group.group_members.create(friend_id: params[:friend_id], group_id: params[:group_id], user_id: current_user.id)

        pending = GroupMember.where(user_id: params[:friend_id]).where(friend_id: current_user.id)

        if pending.size > 0
          pending.each do |pend|
            pend.accepted = true
            pend.save!
          end
          gm.accepted = true
        else
          gm.accepted = false
        end
        gm.save!
      end
      redirect_to group
  	end
  end

  def accept
    group = nil
    add_to_group = Group.where(name: "Uncategorized", user_id: current_user.id)
    if add_to_group.size > 0
      group = add_to_group.first
    else
      group = Group.new(name: "Uncategorized", user_id: current_user.id, visible: true)
      group.save!
    end

    # create a new GroupMember and store it in the uncategorized group
    group.group_members.create(group_id: group.id, user_id: current_user.id, friend_id: params[:friend_id].to_i, accepted: true)

    # accept all GroupMembers from the friend to the current user
    requests = GroupMember.where(user_id: params[:friend_id].to_i, friend_id: current_user.id) 
    requests.each do |request|
      request.accepted = true
      request.save!
    end

    # accept all GroupMembers from the current user to the friend
    requests = GroupMember.where(user_id: current_user.id, friend_id: params[:friend_id].to_i) 
    requests.each do |request|
      request.accepted = true
      request.save!
    end

    redirect_to redirect_to session.delete(:return_to)
  end

  def reject
    GroupMember.where(user_id: params[:friend_id].to_i, friend_id: current_user.id).destroy_all
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
