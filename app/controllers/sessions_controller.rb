class SessionsController < ApplicationController
  def new_st

  end

  def create_st
    user = Student.find(params[:session][:id])
    if (user && user.authenticate(params[:session][:password]))
      # GO TO ADMINPAGE
      log_in_st user
      redirect_to user
    else
      flash.now[:danger] = "Invalid login or password"
      render 'new_st'
    end
  end

  def new_tch

  end

  def create_tch
    user = Teacher.find_by(id: params[:session][:id])
    if (user && user.authenticate(params[:session][:password]))
      # GO TO ADMINPAGE
      login_tch user
      redirect_to user
    else
      # ERROR MESSAGE
      render 'new_tch'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
