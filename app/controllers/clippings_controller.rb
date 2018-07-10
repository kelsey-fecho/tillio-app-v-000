class ClippingsController < ApplicationController
  before_action :require_login

  def create
    plant = Plant.find(params[:clipping][:plant_id])
    garden = Garden.find(params[:garden_id])
    Clipping.find_or_create_by(garden_id: garden.id, plant_id: plant.id)
    redirect_to garden_clippings_path(garden)
  end

  def index
    @cuser = current_user
    @garden = Garden.find(params[:garden_id])
    @user = User.find(@garden.user_id)
    @clippings = Garden.find(params[:garden_id]).clippings
  end

  def show
    @clipping = Clipping.find(params[:id])
  end

  def update
    @clipping = Clipping.find(params[:id])
    @clipping.update(rating: params[:clipping][:rating])
    redirect_to garden_clippings_path(@clipping.garden)
  end

  private

  def clipping_params
    params.require(:clipping).permit(:id, :garden_id, :plant_id, :rating)
  end
end
