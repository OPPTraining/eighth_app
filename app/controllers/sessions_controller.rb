class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && !user.inactive?
      sign_in user
      redirect_back_or root_url
    elsif user && user.authenticate(params[:session][:password]) && user.inactive?
      flash.now[:error] = 'This user is currently inactive'
      render 'new'
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
