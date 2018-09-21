class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'You have successfully signed in.'
      redirect_to '/'
    else
      flash[:danger] = 'Wrong email or password. Please try again.'
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have successfully signed out!'
    redirect_to '/sign_in'
  end

end
