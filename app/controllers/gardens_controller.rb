class GardensController < ApplicationController

  def index
    @gardens = Garden.all
    #@garden = current_user.gardens.build
  end

  def create
  end
end
