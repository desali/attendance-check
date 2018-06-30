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

  def join
    st_logged_in?
    g = Group.find_by(id: params[:id])
    g.students << @current_user
    redirect_to root_url
  end

  def leave
    st_logged_in?
    g = Group.find_by(id: params[:id])
    g.students.delete(@current_user)
    redirect_to root_url
  end

  private
  def student_params
    params.require(:student).permit(:firstname, :lastname, :email, :avatar, :password, :password_confirmation)
  end
end
