TWITTER_API = 'yB0m5DFk7qL8CmzJfXP5w'
TWITTER_SECRET = 'JImJ5dWSTv4jQkOaMXPZXJkKDAL2Wws0xOFA0x0oA'

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET']
  provider :twitter, TWITTER_API, TWITTER_SECRET
end
