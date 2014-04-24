class PagesController < ApplicationController

  def terms
  end

  def landing
  	if current_user.nil?
  		redirect_to new_user_session_path
  	else
  		render 'signedin_index'
  	end
  end
end
