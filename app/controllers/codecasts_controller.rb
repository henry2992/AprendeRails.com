class CodecastsController < ApplicationController

  def index
  	@codecasts = Codecast.all
  end


  def show
  	@codecast = Codecast.friendly.find(params[:id])
  end

  
end
