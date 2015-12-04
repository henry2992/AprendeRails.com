class PagesController < ApplicationController

	def index
		redirect_to app_path if current_user
	end

	def app
		redirect_to root_path if !current_user
	end

end