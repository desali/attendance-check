module PagesHelper
  def get_teacher_info
    # current_user_tch - is current teacher
    current_user_tch
  end

  def get_teacher_courses
    current_user_tch.courses
  end
  
end
