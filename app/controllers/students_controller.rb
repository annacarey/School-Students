class StudentsController < ApplicationController
  def index 
    @students = Student.all
  end 
  
  def show
    @student = Student.find(params[:id])
    @school = @student.school
    @courses = @student.courses
  end

  def new
    @student = Student.new
    @schools = School.all
  end

  def create 
    @student = Student.create(student_params)
    redirect_to student_path(@student.id)
  end

  def edit
    @student = Student.find(params[:id])
    @schools = School.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student.id)
  end 

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  def search 
    @school = School.find(params[:school])
    @students = @school.students.where("name LIKE ?", "%#{params[:name]}%")
    render "schools/show"
  end

  private 
  
  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end
end
