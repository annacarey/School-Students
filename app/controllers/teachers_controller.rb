class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to teacher_path(@teacher.id)
  end

  def delete
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end

  def create
    @teacher = Teacher.create(teacher_params)
    redirect_to teacher_path(@teacher.id)
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def show
    @teacher = Teacher.find(params[:id])
    @courses = @teacher.courses.uniq {|course| course.name}
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name)
  end 
end
