class SessionsController < ApplicationController
  def new_st

  end

  def create_st
    user = Student.find_by_email(params[:session][:email])
    if (user && user.authenticate(params[:session][:password]))
      # GO TO ADMINPAGE
      log_in_st user
      redirect_to root_url
    else
      flash.now[:danger] = "Invalid login or password"
      render 'new_st'
    end
  end

  def new_tch

  end

  def create_tch
    user = Teacher.find_by_email(params[:session][:email])
    if (user && user.authenticate(params[:session][:password]))
      # GO TO ADMINPAGE
      log_in_tch user
      redirect_to root_url
    else
      flash.now[:danger] = "Invalid login or password"
      render 'new_tch'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end



end
