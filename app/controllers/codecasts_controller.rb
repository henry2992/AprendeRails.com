class CodecastsController < ApplicationController

  def index
  	@codecasts = Codecast.all
  end


  def show
  end

  
end
