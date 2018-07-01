module SessionsHelper
  def log_in_tch(user)
    session[:user_id] = user.id
    session[:user_type] = 2
    current_user_tch
  end
  def log_in_st(user)
    session[:user_id] = user.id
    session[:user_type] = 1
    current_user_st
  end

  def current_user_st
    @current_user ||= Student.find_by(id: session[:user_id])
  end
  def current_user_tch
    @current_user ||= Teacher.find_by(id: session[:user_id])
  end

  def st_logged_in?
    !current_user_st.nil?
  end
  def tch_logged_in?
    !current_user_tch.nil?
  end

  def log_out
    session.delete(:user_id)
    session.delete(:user_type)
    @current_user=nil
  end
end
