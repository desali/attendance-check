class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      log_in_tch @teacher
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:firstname, :lastname, :email, :avatar, :password, :password_confirmation)
  end
end
