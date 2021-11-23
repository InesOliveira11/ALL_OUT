class BookingsController < ApplicationController
# before_action :set_booking, only: [:show]

  def new
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.activity = @activity
    if @booking.save!
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  #   def edit
  #   end

  # def update
  #   if params[:querry] =
  #   @booking.update(booking_params)
  #   redirect_to booking_path(@booking)
  # end

  #   def destroy
  #     @booking.destroy
  #     redirect_to booking_path
  #   end

  #   private

  #   def set_booking
  #     @booking = Booking.find(params[:id])
  #   end

  def booking_params
    params.require(:booking).permit(:date, :user_id, :activity_id)
  end
end
