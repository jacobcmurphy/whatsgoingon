class EventsController < ApplicationController
  
  def index
  	if user_signed_in?
      @events = Event.find_events(current_user.id)
    else
      redirect_to root_url
    end
  end

    def create
    if user_signed_in?
      group_ids = params[:group_ids].map(&:to_i)
      groups = Group.find(group_ids)
      start_time = DateTime.strptime(params[:start_time], '%m/%d/%Y %H:%M')
      end_time = DateTime.strptime(params[:end_time], '%m/%d/%Y %H:%M')
      groups.each do |g|
          g_event = g.events.create(title: params[:title], description: params[:description], latitude: params[:lat], longitude: params[:long], group_id: g.id.to_i, start_time: start_time, end_time: end_time)
          g_event.save!
      end
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
    if user_signed_in?
      Event.find(params[:event_id].to_i).destroy
      redirect_to events_path
    else 
      redirect_to root_url
    end
  end

end
