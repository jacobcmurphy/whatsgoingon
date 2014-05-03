class EventsController < ApplicationController
  def index
  	if user_signed_in?
      @events = Event.find_events(current_user.id)
    else
      redirect_to root_url
    end
  end


  def show
    if user_signed_in?
      @events = Event.where(id: params[:id].to_i)
      group = Group.find(@events.first.group_id)
      if group.id = current_user.id # the user can edit this event
      else
        redirect_to events_path
      end
    else
      redirect_to root_url
    end
  end


  def destroy
  end
end
