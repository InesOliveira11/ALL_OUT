class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show
    @review = Review.new
    @user = User.find(params[:id])
    user_bookings = @user.bookings
    @bookings = []
    user_bookings.each do |booking|
      @bookings << booking if booking.order.state == "paid"
    end
    @previous_bookings = @bookings.select { |b| b.date < Date.today }
    @current_bookings = @bookings.select { |b| b.date >= Date.today }
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :email, :encrypted_password, :address)
  end
end
