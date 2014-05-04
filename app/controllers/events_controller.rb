class EventsController < ApplicationController

  def create
    if user_signed_in?
      group_ids = params[:group_ids].map(&:to_i)
      groups = Group.find(group_ids)

      groups.each do |g|
          g_event = g.events.create(title: params[:title], description: params[:description], latitude: params[:lat], longitude: params[:long], group_id: g.id.to_i)
          g_event.save!
      end
    else
      redirect_to root_url
    end
  end


  def show
    @events = Event.find_by_sql("
        SELECT * 
        FROM events AS e
        WHERE e.group_id IN 
           (SELECT g.id
                FROM group_members AS gm
                WHERE e.group_id = gm.id AND (gm.user_id = ? OR gm.friend_id = ?))", current_user.id, current_user.id)
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