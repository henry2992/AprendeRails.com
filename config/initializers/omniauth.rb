Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
  provider :facebook, ENV["FACEBOOK_KEY"], ENV["FACEBOOK_SECRET"],
  	scope: 'public_profile,email,user_location', display: 'popup', secure_image_url: true, info_fields: 'id,name,email,location,picture'
end