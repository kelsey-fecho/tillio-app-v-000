class GardensController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    if !logged_in?
      redirect_to '/login'
    end
    @plants = Plant.all
    @gardens = Garden.all
    @garden = Garden.new
  end

  def create
    garden = Garden.new(garden_params)
    garden.save
    redirect_to gardens_path
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :user_id, clipping_attributes: [:plant_id, :garden_id, :rating])
  end
end
