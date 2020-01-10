class CoursesController < ApplicationController
  def index
  end

  def new
    @course = Course.new
    @teachers = Teacher.all 
    @students = Student.all 
  end

  def update
  end

  def create
    byebug
  #   params["course"]["student_id"].each do |student_id|
  #     if student_id
  #       Course.create(name: course_params["name"], teacher_id: course_params["teacher_id"], student_id: student_id)
  #     end 
  #   end 
  #   redirect_to course_path("#{course_params["teacher_id"]}-#{course_params["name"]}")
  end

  def edit
    args = params[:id].split("-")
    @teacher = Teacher.find(args[0])
    @teachers = Teacher.all 
    @students = Student.all 
    @course = Course.find_by(name: args[1], teacher_id: @teacher.id)
  end

  def show
    args = params[:id].split("-")
    @teacher = Teacher.find(args[0])
    @course = Course.find_by(name: args[1], teacher_id: @teacher.id)
    @students = Course.where(name: args[1], teacher_id: @teacher.id).map {|course| course.student}
  end

  def delete
  end

  private 

  def course_params 
    params.require(:course).permit(:name, :teacher_id)
  end 

end
