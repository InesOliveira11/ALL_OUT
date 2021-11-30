class ActivitiesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query"
      @activities = Activity.where(sql_query, query: "%#{params[:query]}%")
    else
      if current_user.answer_ids
        #@activities = [] #Activity.where(id: ActivityTag.where(tag_name: current_user.answers.pluck(:selected_answer)).distinct.pluck(:activity_id))
        #@activities = Activity.includes(:activity_tags).where('activity_tag.id = ?', ActivityTag.where(tag_name: current_user.answers.pluck(:selected_answer)).distinct)
        @selected_tags = current_user.answers.pluck(:selected_answer)
        @activities = []
        Activity.all.each do |activity|
          p activity.activity_tags.pluck(:tag_name)
          p @selected_tags
          @activities << activity if activity.activity_tags.pluck(:tag_name) == @selected_tags
        end
      else
        @activities = Activity.all
      end
    end

    # @markers = @activities.geocoded.map do |activity| {
    #   lat: activity.latitude,
    #   lng: activity.longitude,
    #   # info_window: render_to_string(partial: "info_window", locals: { activity: @activity }),
    #   # image_url: helpers.asset_url("location1.png")
    # }
    #end
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
