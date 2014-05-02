class FriendsController < ApplicationController
    protect_from_forgery :except => :auth # stop rails CSRF protection for this action

    def new
        @friend = Friend.new
    end

    def create
        Pusher.trigger('private-channel-' + params[:friend_id].to_s, 'my-event', {
            fid: current_user.id,
            name: current_user.name
        })
        current_user.friends.create(user_id: current_user.id, friend_id: params[:friend_id], accepted: false)
        render nothing: true
    end

    def shoutout
        Pusher.trigger('private-channel-' + params[:friend_id].to_s, 'send-shout', {
            fid: current_user.id,
            name: current_user.name
        })
        render nothing: true
    end
  
    def auth
        if current_user
          response = Pusher[params[:channel_name]].authenticate(params[:socket_id])
          render :json => response
        else
          render :text => "Forbidden", :status => '403'
        end
    end

    def show
        if user_signed_in?
            f_ids = []
            pending_f_ids = []
            current_user.friends.each do |f|
                if f.accepted == true
                    f_ids << f.friend_id
                else
                    pending_f_ids << f.friend_id
                end
            end
            # @friend = Friend.new
            @pending_friends = User.find(pending_f_ids)
            @friends = User.find(f_ids)
            @friends.each do |f|
                if f.current_sign_in_at <= 10.minutes.ago || f.visible == false
                    f.location = ""
                    f.latitude = ""
                    f.longitude = ""
                    f.color_status = 13
                    puts f
                end
            end
        else
           redirect_to root_url
        end 
    end

    def reject
        if user_signed_in?
            Friend.delete_all(user_id: params[:friend_id], friend_id: current_user.id)
            render nothing: true
        else
            redirect_to root_url
        end
    end

    def accept
        if user_signed_in?
            fid = params[:friend_id].to_i
            cuid = current_user.id
            current_user.friends.create(user_id: cuid, friend_id: fid, accepted: true)
            accepted_friend = Friend.where(user_id: fid, friend_id: cuid).first
            accepted_friend.accepted = true
            accepted_friend.save!
            render nothing: true
        else
            redirect_to root_url
        end
    end

    def search
        if user_signed_in?
            @results = User.find_by_fuzzy_name(params[:search], limit: 10)
            @results.delete(current_user)
            current_user.friends.each do |f|
                @results.delete(User.find(f.friend_id))

                #do not show friends that are already requested but still pending
                @results.delete(f) if f.accepted = false
            end

            respond_to do |format|
                format.js
            end
        else
            redirect_to root_url
        end
    end


    def getmarkers
        if user_signed_in?
            cuid = current_user.id
            dbMarkers = {}
            user_friends = Friend.most_recent(cuid)
            user_friends.each do |f|
                thisMarker = { f.id => [ 
                    {name:f.name }, 
                    {lat:f.latitude }, 
                    {lng:f.longitude }, 
                    {color_status:f.color_status } ]}
                dbMarkers.merge! thisMarker
            end
            
            respond_to do |format|
                format.json { render json: dbMarkers }
            end
        else
            redirect_to root_url
        end
    end

    def destroy
        if user_signed_in?
            fid = params[:fid].to_i
            cuid = current_user.id
            GroupMember.where(user_id: cuid, friend_id: fid).destroy_all
            GroupMember.where(user_id: fid, friend_id: cuid).destroy_all
            Friend.where(user_id: cuid, friend_id: fid).destroy_all
            Friend.where(user_id: fid, friend_id: cuid).destroy_all
            render nothing: true
        else 
            redirect_to root_url
        end
    end


    helper_method :show
end