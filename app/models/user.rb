# Each login has a user record.
class User < ActiveRecord::Base
  before_create :create_remember_token
  before_save { self.email = email.downcase }

  has_many :groups, dependent: :destroy
  has_many :check_ins, dependent: :destroy

  validates :email, presence:true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }

  # password validation handled by has_secure_password
  #validates :password, confirmation: true, length: {minimum: 6}, confirmation: true



  has_secure_password

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.tokenhash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.tokenhash(User.new_remember_token)
  end
end
