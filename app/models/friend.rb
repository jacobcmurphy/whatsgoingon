class Friend < ActiveRecord::Base
	belongs_to :user
	validates_uniqueness_of :id, :scope => [:user_id, :friend_id] # FIX THIS


	def self.notifications uid
		#if uid is_a? Integer
			notifs = self.where(friend_id: uid, accepted: false)
			note_names = []

			notifs.each do |note|
				friend = User.find(note.user_id)
				note_names <<  [friend.id, friend.name]
			end

			note_names
		#end
	end

	def self.most_recent uid
		if uid.is_a? Integer
		  test = User.find_by_sql([
		        "SELECT DISTINCT *
		        FROM users AS u
		        WHERE u.updated_at > ? AND u.id != ? AND u.visible = TRUE AND u.id IN
		          (SELECT user_id
		          FROM friends AS f
		          WHERE f.friend_id = ? AND f.accepted = TRUE AND NOT EXISTS
		          	(SELECT *
		          	FROM groups AS g, group_members AS gm
		          	WHERE g.id = gm.group_id AND g.user_id = f.user_id AND g.visible = FALSE))", 
		  		10.minutes.ago, uid, uid])
		end
  end
end