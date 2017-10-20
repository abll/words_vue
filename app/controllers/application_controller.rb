class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Methods declared helper_method are availabe in the view. Possibly only in this controller. 
  helper_method :current_user

  # All methods from that follow this point will be private. 
  private

  def current_user
    @curret_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def authorize
    redirect_to login_url, alert: "Not Authorized" if current_user.nil?
  end

end
