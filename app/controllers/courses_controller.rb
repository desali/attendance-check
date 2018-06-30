class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = current_user_tch.courses.new(course_params)

    if @course.save
      'A'.upto(convert_to_char(params[:course][:group_count].to_i)).each do |char|
        @course.groups.create(name: char)
      end

      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
    @gr_id = @course.groups.find_by(name: params[:gr]).id
    @all = Attendant.where(group_id: @gr_id)
  end

  def check
    @course = Course.find(params[:id])
    @group = @course.groups.find_by(name: params[:gr])
    @students = @group.students
  end

  def send(send_params)
    params[:group_id]
  end

  def destroy
    @course = Course.find(params[:id])
    @course.groups.destroy_all
    @course.destroy
    redirect_to root_url
  end

  private

  def course_params
    params.require(:course).permit(:name, :group_count)
  end

  def send_params
    params.permit(:group_id)
  end
end
