class CheckIn < ActiveRecord::Base
	belongs_to :user

	def self.most_recent
    self.find(:all,
              :conditions => ['check_ins.time > ?', 10.minutes.ago]).uniq.pluck(:user_id)
  end
end
