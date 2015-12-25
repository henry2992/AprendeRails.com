class SubchaptersController < ApplicationController

	def index
		
	end

	def show
		@subchapter = Subchapter.find(params[:id])
		
	end

end
