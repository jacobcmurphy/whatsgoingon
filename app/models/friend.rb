class Friend < ActiveRecord::Base
  belongs_to :user
  has_many :group_members
end
