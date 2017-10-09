class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      cookies.signed[:user_id] = @user.id
      flash[:success] = "Welcome #{@user.username} to CubeBlog!"
      redirect_to root_path
    else
      redirect_back(fallback_location: root_path)
    end
  end
  
  def update
    if @user.update(user_params)
      flash[:success] = "Your account was updated successfully"
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = "Something go wrong, update failed"
      redirect_back(fallback_location: root_path)
    end  
  end
  
  def show
    
  end
  
  def destroy
    @user.destroy
    flash[:danger] = "user and all associated recipes have been deleted!"
    redirect_back(fallback_location: root_path)
  end
  
private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def require_same_user
    if current_user != @user
      flash[:danger] = "You can only edit or delete your own account"
      redirect_back(fallback_location: root_path)
    end
  end
  
end