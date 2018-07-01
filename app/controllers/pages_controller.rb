class PagesController < ApplicationController
  def index
    @course = Course.new
    @joinArgs = " "
  end

  def profile
    @student = get_student
    @notify = @student.notifications.all
  end

  def get_courses
    @courses = Teacher.find(params[:teacher_id]).courses
  end

  def confirm
    @noti = Notification.find_by(id: params[:nid])
    # Get Geo location
    # Validate with Geo of university
    @student = get_student
    a = @student.attendants.new(group_id: @noti.group_id, subject_id: @noti.subject_id)
    a.save
    puts a.errors.messages
  end

end
