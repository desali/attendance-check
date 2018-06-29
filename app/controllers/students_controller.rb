class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      # Success

    else
      render 'new'
    end
  end

  private

  def student_params
    params.require(:student).permit(:fullname, :email, :password, :password_confirmation)
  end
end
