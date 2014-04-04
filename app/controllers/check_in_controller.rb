class CheckInController < ApplicationController
  def create
    if(user_signed_in?)
      @check = CheckIn.new(check_in_params)
      @check.time = Time.now
      @check.user_id = current_user.id
      @check.save!
    end
    render :nothing => true
 end

  private 
  def check_in_params
    params.permit(:user_id, :latitude, :longitude, :time, :location)
  end
end
