class CheckInController < ApplicationController
  def create
  	if(current_user)
	    @check = CheckIn.new(check_in_params, time: Time.now, user_id: current_user.id)
	    @check.save
	end

	redirect_to root_url
  end

  private 
  def check_in_params
     params.permit(:user_id, :latitude, :longitude)
  end
end
