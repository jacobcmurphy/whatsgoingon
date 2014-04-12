class GroupsController < ApplicationController
  def new
    if user_signed_in?
      @group = Group.new
    else
      redirect_to groups_path
    end
  end

  def create
  	if user_signed_in?
  		@group = Group.new(name: params[:group][:name], user_id: current_user.id.to_i, visible: true)
  		if @group.save
        redirect_to groups_path
      end
    else
      redirect_to groups_path
  	end
  end

  def destroy
    if user_signed_in?
      @group = Group.find(params[:id].to_i)
      @group.destroy
      respond_to do |format|
        format.html { redirect_to groups_path }
        format.json { head :no_content }
      end
   end
   render :nothing => true
  end

  def show
    if user_signed_in?
      # get the group info
      @group = Group.find(params[:id].to_i)
      @mems = @group.group_members
      mem_ids = []

      @mems.each do |mem|
        mem_ids << mem[:friend_id]
      end
      # all members currently in the group
      @members = User.find_all_by_id(mem_ids)


      # possible friends to add

      f_ids = []

      # get all friend ids for friends currently not in the group
      current_user.friends.each do |f|
          f_ids << f.friend_id unless mem_ids.include? f.friend_id
      end
      @my_friends = User.find(f_ids)

      else
        redirect_to root_url
      end
  end



  def index
    if user_signed_in?
      @groups = Group.where(user_id: current_user.id)
    else
      redirect_to groups_path
    end
  end

  def changeVisibility
    grp = Group.find(params[:group_id])
    grp.visible = !(grp.visible)
    grp.save! 
    redirect_to groups_path
  end

end
