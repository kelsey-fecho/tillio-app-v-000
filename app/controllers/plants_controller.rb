class PlantsController < ApplicationController
  def index
    if !logged_in?
      redirect_to '/signin'
    end
    @plants = Plant.all
  end
end
