class CheckIn < ActiveRecord::Base
	belongs_to :user

	def self.most_recent uid
	if uid.is_a? Integer
	    CheckIn.find_by_sql([
	    	"SELECT distinct ON (c.user_id) c.user_id, c.latitude, c.longitude, c.location
	    	FROM check_ins AS c
	    	WHERE c.time > ? AND c.user_id != ? AND c.user_id IN
	    		(SELECT g.user_id
	    		FROM groups as g, group_members AS gm
	    		WHERE g.user_id = gm.user_id AND gm.friend_id = ? AND gm.accepted = TRUE)", 10.minutes.ago, uid, uid])
	end
  end
end