class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    # if current_user.answer_ids
    #   @activities = Activity.where(id: ActivityTag.where(tag_name: current_user.answers.pluck(:selected_answer)).distinct.pluck(:activity_id))
    #   # ActivityTag.where(tag_name: current_user.answers.pluck(:selected_answer)).distinct.pluck(:activity_id).each do |tag_id|
    #   #   @recommended_activities << Activity.where(id: tag_id)
    #   #   p @recommended_activities
    #   # end
    # end
  end

  def show
    @activity = Activity.find(params[:id])
    @markers = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      info_window: render_to_string(partial: "info_window", locals: { activity: @activity }),
      image_url: helpers.asset_url("location1.png")
    }]
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to @activities, notice: 'Activity was successfully created.'
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :price, :rating, :location, :photo)
  end
end
