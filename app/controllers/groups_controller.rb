class GroupsController < ApplicationController
  def new
    if user_signed_in?
      @group = Group.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
  	if user_signed_in?
  		@group = Group.new(name: params[:group][:name], user_id: current_user.id.to_i, visible: true)
  		if @group.save
        redirect_to @group
      end
    else
      redirect_to new_user_session_path
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
  end

  def show
    @group = Group.find(params[:id].to_i)
    if params[:search].nil?
      @users = nil
    else
      @users = User.find(:all, :conditions => ['name LIKE ? OR email LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%"])
    end
  end

  def index
    if user_signed_in?
      @groups = Group.where(user_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
  end

end
