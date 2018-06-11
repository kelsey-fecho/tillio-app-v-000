class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    session.include?(:user_id)
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    return head(:forbidden) unless logged_in?
  end

  def login(user)
    session[:user_id] = user.id
    redirect_to users_path
  end
end
