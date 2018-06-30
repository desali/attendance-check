class PagesController < ApplicationController
  def index

  end

  def profile

  end

  def get_courses
    @courses = Teacher.find(params[:teacher_id]).courses
  end
end
