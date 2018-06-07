class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = params[:user][:id]
    redirect_to '/'
  end

  def destroy
    session.delete :user_id
  end
end
