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
end
