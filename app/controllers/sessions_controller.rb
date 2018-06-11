class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if (omni = request.env['omniauth.auth'])
      verify(User.find_by(email: omni[:info][:email]), omni)
    else
      verify(User.find_by(email: params[:user][:email]), params)
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

  private

  def verify(user, info)
    if (flash[:error] = User.auth_error(user, info))
      redirect_to login_path
    else
      login(user)
    end
  end
end
