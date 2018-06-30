class PagesController < ApplicationController
  def index

  end

  def profile

  end

  def get_courses
    @courses = Teacher.find(params[:teacher_id]).courses
  end

  def get_notifications_st
    # TODO Validation of user
    @notify = Student.find(params[:user_id])
  end

end
