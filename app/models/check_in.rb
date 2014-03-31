class CheckIn < ActiveRecord::Base
	belongs_to :user

	def self.most_recent uid
	if uid.is_a? Integer
	    #self.select("distinct on (user_id) user_id, latitude, longitude")
	    #.where('check_ins.time > ? AND check_ins.user_id != ?', 15.minutes.ago, uid)

	    CheckIn.find_by_sql([
	    	"SELECT distinct ON (c.user_id) c.user_id, c.latitude, c.longitude
	    	FROM check_ins AS c
	    	WHERE c.time > ? AND c.user_id != ? AND c.user_id IN
	    		(SELECT g.user_id
	    		FROM groups as g, group_members AS gm
	    		WHERE g.user_id = gm.user_id AND gm.friend_id = ?)", 10.minutes.ago, uid, uid])
	end
  end
end