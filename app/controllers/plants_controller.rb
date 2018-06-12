class PlantsController < ApplicationController
  def index
    if !logged_in?
      redirect_to '/login'
    end
    @plants = Plant.all
  end

  def show
    @p = Plant.find(params[:id])
    @user = current_user
  end

  def create
    @plant = Plant.create(plant_params)
    redirect_to plant_path(@plant)
  end
  
  private

  def plant_params
    params.require(:plant).permit(:name, :kind, :landscape_categories, :description, :zone, :height, :bloom_time, :flower_color, :light, :water, :drainage, :growth_rate, :maintenance, :susceptibility)
  end
end
