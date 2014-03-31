class GroupMember < ActiveRecord::Base
	belongs_to :group

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
end