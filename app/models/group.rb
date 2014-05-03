class Group < ActiveRecord::Base
	belongs_to :user
	has_many :group_members, dependent: :destroy
	has_many :events, dependent: :destroy
end
