class PlantsController < ApplicationController
  def index
    if !logged_in?
      redirect_to '/login'
    end
    @plants = Plant.all
  end

  def show
    @p = Plant.find(params[:id])
  end
end
