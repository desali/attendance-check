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

  private

  def course_params
    params.require(:course).permit(:name, :group_count)
  end
end
