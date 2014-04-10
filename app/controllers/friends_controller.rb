class FriendsController < ApplicationController
  def new
  	@friend = Friend.new
  end

  def create
    if(user_signed_in?)
      current_user.friends.create(user_id: current_user.id, accepted: false, friend_id: params[:friend_id])
    end
    render nothing: true
   end

  def destroy
  	if user_signed_in?
      Friend.find(params[:fid].to_i).destroy
      redirect_to friend_path
    else 
      redirect_to root_url
    end
  end

  def show
    @friend = Friend.new
  end

  def reject
  	if user_signed_in?
  		current_user.friends.where(friend_id: friend_id).first.destroy!
  	end
  	render nothing: true
  end

  def accept
  	if user_signed_in?
  		current_user.friends.create(user_id: current_user.id, friend_id: friend_id, accepted: true)
  		accepted_friend = Friend.where(user_id: friend_id, friend_id: current_user.id).first
      accepted_friend.accepted = true
      accepted_friend.save!
  	end
  	render nothing: true
  end

  def getmarkers
  	cuid = current_user.id
  	dbMarkers = {}

  	user_friends = Friend.most_recent(cuid)

  	for i in 0...user_friends.length
  		thisMarker = { user_friends[i][:user_id] => [
	                  { name: user_friends[i][:name] },
	                  { lat:  user_friends[i][:latitude] },
	                  { lng:  user_friends[i][:longitude] } 
	                ]
	            }
	    dbMarkers.merge! thisMarker
  	end

  	respond_to do |format|
  		format.json { render json: dbMarkers }
    end

  end

end
