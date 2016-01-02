class SubchaptersController < ApplicationController

	def index
		
	end

	def show
		@subchapter = Subchapter.friendly.find(params[:id])
	end

end
