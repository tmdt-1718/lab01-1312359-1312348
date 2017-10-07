class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:username] = user.id
      cookies.signed[:username] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to user
    else
      flash.now[:danger] = "There was something wrong with your login information"
      #redirect_back(fallback_location: root_path)
      render 'new'
    end
  end
  
  def destroy
    session[:username] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path
  end
  
end