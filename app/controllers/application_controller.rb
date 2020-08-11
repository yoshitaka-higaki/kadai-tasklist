class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  def after_sign_in_path_for(resource)
    mypage_root_path 
  end

  def after_sign_out_path_for(resource)
    new_user_session_path 
  end
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
