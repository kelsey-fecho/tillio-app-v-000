class ClippingsController < ApplicationController
  before_action :require_login

  def create
    plant = Plant.find(params[:clipping][:plant_id])
    Clipping.find_or_create_by(user_id: params[:user_id], plant_id: plant.id)
    redirect_to user_clippings_path(current_user)
  end

  def index
    @cuser = current_user
    if params[:user_id]
      @user = User.find(params[:user_id])
      @clippings = User.find(params[:user_id]).clippings
    else
      @clippings = Clipping.all
    end
  end

  def show
    @clipping = Clipping.find(params[:id])
  end

  def update
    @clipping = Clipping.find(params[:id])
    @clipping.update(rating: params[:clipping][:rating])
    redirect_to user_clippings_path(current_user)
  end

  private

  def clipping_params
    params.require(:clipping).permit(:id, :user_id, :plant_id, :rating)
  end
end
