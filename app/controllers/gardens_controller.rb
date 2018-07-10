class GardensController < ApplicationController

  def index
    if !logged_in?
      redirect_to '/login'
    end
    @plants = Plant.all
    @gardens = Garden.all
    @garden = current_user.gardens.build
  end

  def create
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :user_id, clipping_attributes: [:plant_id, :garden_id, :rating])
  end
end
