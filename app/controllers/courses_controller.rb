class CoursesController < ApplicationController
  
  def index
  	@courses = Course.all
  end

  def show
    @course = Course.find(params[:id])

    @subchapters = @course.subchapters(params[:id])

  end


  
end
