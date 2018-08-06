class GardensController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    if !logged_in?
      redirect_to '/login'
    else
      @plants = Plant.all
      @gardens = Garden.all
      @garden = current_user.gardens.build
    end
  end

  def create
    @garden = current_user.gardens.build(garden_params)
    if @garden.save
      render 'gardens/jsonshow', :layout => false
    else
      render 'gardens/index'
    end
  end

  def show
    @garden = Garden.find(params[:id])
    @user = User.find(@garden.user_id)
    @cuser = current_user
  end

  def show_specific
    @gardens = Garden.findGardens(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @gardens}
    end
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :user_id)
  end
end
