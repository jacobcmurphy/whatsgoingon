class GetMarkersController < ApplicationController
	  respond_to :json

  def getmark

  	cuid = current_user.id
	dbMarkers = {}

  	for i in 0...CheckIn.most_recent(cuid).length
  		thisMarker = { CheckIn.most_recent(cuid)[i][:user_id] => [
	                  { name: User.find(CheckIn.most_recent(cuid)[i][:user_id])[:name] },
	                  { lat: CheckIn.most_recent(cuid)[i][:latitude] },
	                  { lng: CheckIn.most_recent(cuid)[i][:longitude] } 
	                ]
	            }
	    dbMarkers.merge! thisMarker
  	end
  	
	respond_to do |format|
		format.json { render :json => dbMarkers }
    end

  end

end
