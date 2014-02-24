OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '826643820685975', 'a836718c60a360b5c52ef2cf0b5f4fca', :scope => 'email, user_relationships, user_status,user_about_me publish_actions',    :display => 'popup'
end