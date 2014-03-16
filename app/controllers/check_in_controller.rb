class CheckInController < ApplicationController
  def create
    if(current_user)
      @check = CheckIn.new(check_in_params)
      @check.time = Time.now
      @check.user_id = current_user.id
      @check.save
    end
 end

  private 
  def check_in_params
    params.permit(:user_id, :latitude, :longitude, :user_id, :time)
  end
end
