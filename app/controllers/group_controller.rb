class GroupController < ApplicationController
  def new
  end

  def create
  	if signed_in?
  		g = Group.new(group_params)
  		g.save
  	end
  end

  def delete
  end

  private 
  def group_params
  	params.permit(:user_id, :name, :visible)
  end
end
