class PlantsController < ApplicationController
  def index
    if !logged_in?
      redirect_to '/signin'
    end
  end
end
