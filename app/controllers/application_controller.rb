class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :requie_user
  
  def requie_user
    
  end
end
