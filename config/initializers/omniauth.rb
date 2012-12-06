TWITTER_API = 'yB0m5DFk7qL8CmzJfXP5w'
TWITTER_SECRET = 'JImJ5dWSTv4jQkOaMXPZXJkKDAL2Wws0xOFA0x0oA'

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET']
  provider :twitter, TWITTER_API, TWITTER_SECRET

  Twitter.configure do |config|
    config.consumer_key = TWITTER_API
    config.consumer_secret = TWITTER_SECRET
    config.oauth_token = 'YOUR_OAUTH_TOKEN'
    config.oauth_token_secret = 'YOUR_OAUTH_TOKEN_SECRET'
  end
end
