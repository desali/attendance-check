class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      log_in_st @student
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def student_params
    params.require(:student).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end
