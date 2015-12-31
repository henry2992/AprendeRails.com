class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    @user = User.find_for_oauth(env["omniauth.auth"], current_user)

    if @user.persisted? # check for existing user in DB
      sign_in_and_redirect @user, event: :authentication
      # change: customize flash msg
      set_flash_message(:notice, :success, kind: "twitter".capitalize) if is_navigational_format?
    else
      session["devise.twitter_data"] = env["omniauth.auth"]
      redirect_to root_path
    end
  end

  def facebook 
    @user = User.find_for_oauth(env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      # change: customize flash msg
      set_flash_message(:notice, :success, kind: "facebook".capitalize) if is_navigational_format?
    else 
      session["devise.facebook_data"] = env["omniauth.auth"]
      redirect_to root_path
    end
  end

  def after_sign_in_path_for(resource)
    if resource.email_verified?
      super resource
    else
      finish_signup_path(resource)
    end
  end
  
end
