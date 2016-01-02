class PagesController < ApplicationController

	def index
		redirect_to codecasts_path if current_user
	end

	

end