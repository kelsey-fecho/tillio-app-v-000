class ClippingsController < ApplicationController
  before_action :require_login

  def new
    user = User.find(params[:user_id])
    if current_user === user
      @clipping = Clipping.new(user_id: params[:user_id])
    else
    end
  end

  def create
    Clipping.find_or_create_by(user_id: params[:user_id], plant_id: params[:clipping][:plant_id])
    redirect_to user_path(current_user)
  end

  def index
    if params[:user_id]
      @clippings = User.find(params[:user_id]).clippings
    else
      @clippings = Clipping.all
    end
  end

  def show
    @clipping = Clipping.find(params[:id])
  end

  private

  def clipping_params
    params.require(:clipping).permit(:user_id, :plant_id, :rating)
  end
end
