class PlantsController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    if !logged_in?
      redirect_to '/login'
    end
    @plants = Plant.all
  end

  def kind
    binding.pry
    @plants = Plant.where(kind: params[:kind])
  end

  def show
    @p = Plant.find(params[:id])
    @user_gardens = current_user.gardens
    respond_to do |format|
      format.html
      format.json {render json: @p}
    end
  end

  def new
    render :layout => false
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
