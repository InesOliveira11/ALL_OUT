class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.all
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def create
    @favourite = Favourite.new
    @activity = Activity.find(params[:activity_id])
    @favourite.user = current_user
    @favourite.activity = @activity
    if @favourite.save!
      redirect_to request.referrer
    # else
    #   render :new
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to request.referrer
    #redirect_to favourites_url, notice: 'Restaurant was successfully destroyed.'
  end
end
