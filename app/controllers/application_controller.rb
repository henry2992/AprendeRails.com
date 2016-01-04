class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_flash_types :success, :warning, :danger, :info



  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end


  # private

  # 	def current_user
  # 		@current_user ||= User.find(session[:user_id]) if session[:user_id]		
  # 	end
		
		# helper_method :current_user  	
end
