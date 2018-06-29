class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      # Success

    else
      render 'new'
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end
