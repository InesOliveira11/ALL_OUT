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
      order = Order.create!(booking: @booking, activity: @activity, activity_sku: @activity.sku, amount: @activity.price, state: 'pending', user: current_user)
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @activity.title,
          images: [@activity.photo.service_url(secure: true)],
          amount: @activity.price_cents,
          currency: 'gbp',
          quantity: 1
        }],
        success_url: user_url(current_user),
        cancel_url: order_url(order)
      )

      order.update(checkout_session_id: session.id)
      redirect_to new_order_payment_path(order)
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
