class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
    @students = @school.students
  end

  def support 
    
  end 
end
