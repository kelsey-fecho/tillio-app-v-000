class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if (omni = request.env['omniauth.auth'])
      @user = User.find_by(email: omni[:info][:email])
    else
      @user = User.find_by(emails: params[:users][:email])
      return head(:forbidden) unless @user.authenticate(params[:password])
      session[:user_id] = params[:user][:id]
    end
    redirect_to '/'
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
