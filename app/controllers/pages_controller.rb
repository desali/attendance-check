class PagesController < ApplicationController
  def index
    @course = Course.new
    @joinArgs = Attendant.new
  end

  def profile
    if st_logged_in?
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
    puts "!!! #{distance_between(session[:x_1], session[:y_1], session[:x_2], session[:y_2])*1000}"
    if distance_between(session[:x_1], session[:y_1], session[:x_2], session[:y_2])*1000 <= 10000
      @student = get_student
      a = @student.attendants.new(group_id: @noti.group_id, subject_id: @noti.subject_id)
      a.save
    else
      flash.now[:error] = "You are not even at university!!!"
    end
    # Validate with Geo of university

    redirect_to profile_path
  end

end
