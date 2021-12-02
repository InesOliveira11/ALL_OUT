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
      redirect_to activities_path(anchor: "activity-#{@activity.id}")
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to activities_path(anchor: "activity-#{@favourite.activity.id}")
  end
end
