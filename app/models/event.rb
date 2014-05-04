class Event < ActiveRecord::Base
	belongs_to :group

	def self.find_events uid
		Event.find_by_sql(["
	          SELECT *
	          FROM events AS e
	          WHERE end_time > ? AND e.group_id IN 
	             (SELECT gm.group_id
	              FROM group_members AS gm
	              WHERE e.group_id = gm.group_id AND (gm.user_id = ? OR gm.friend_id = ?)
	          ORDER BY start_time)", Time.now, uid, uid])
	end

end