class CheckIn < ActiveRecord::Base
	belongs_to :user

	def self.most_recent uid
	if uid.is_a? Integer
	    self.select("distinct on (user_id) user_id, latitude, longitude")
	    .where('check_ins.time > ? AND check_ins.user_id != ?', 12.minutes.ago, uid)
	end
  end
end