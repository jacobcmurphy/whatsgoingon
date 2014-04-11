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
        if user_signed_in?
            f_ids = []
            current_user.friends.each do |f|
                f_ids << f.friend_id
            end
            @friend = Friend.new
            @friends = User.find(f_ids, :select => "name, location, latitude, longitude, id")
        else
           redirect_to root_url
        end 
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

    def search
        @results = User.find_by_fuzzy_name(params[:search], :limit => 10)
        @results.delete(current_user)

        respond_to do |format|
            format.js
        end
    end


    def getmarkers
        cuid = current_user.id
        dbMarkers = {}
        user_friends = Friend.most_recent(cuid)
        for i in 0...user_friends.length
            thisMarker = { user_friends[i][:user_id] => [ 
                { name: user_friends[i][:name] }, 
                { lat:  user_friends[i][:latitude] }, 
                { lng:  user_friends[i][:longitude] }, 
                { color_status:  user_friends[i][:color_status] } ]}
            dbMarkers.merge! thisMarker
        end
        respond_to do |format|
            format.json { render json: dbMarkers }
        end
    end

    def unfriend
        if user_signed_in?
            cuid = current_user.id
            Friend.where(:user_id => cuid, :friend_id => params[:fid].to_i).destroy_all
            Friend.where(:user_id => params[:fid].to_i, :friend_id => cuid).destroy_all
            render nothing: true
        else 
            redirect_to root_url
        end
    end


    helper_method :show
end