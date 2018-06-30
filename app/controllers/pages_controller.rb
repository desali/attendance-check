class PagesController < ApplicationController
  def index

  end

  def profile
    @student = get_student
    @notify = @student.notifications.all
  end

  def get_courses
    @courses = Teacher.find(params[:teacher_id]).courses
  end

end
