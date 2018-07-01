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

  def confirm
    @noti = Notification.find_by(id: params[:nid])
    # Get Geo location
    #getGeo()
    if distance_between(session[:x_1], session[:y_1], session[:x_2], session[:y_2])*1000 < 250
      @student = get_student
      a = @student.attendants.new(group_id: @noti.group_id, subject_id: @noti.subject_id)
      a.save
    else
      flash[:error] = "You are not even at university!!!"
    end
    # Validate with Geo of university

  end

end
