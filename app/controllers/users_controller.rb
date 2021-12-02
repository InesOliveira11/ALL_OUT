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

  # def new
  #   @user = User.new
  # end

  # def edit
  # end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to @user, notice: 'User was successfully created.'
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   if @user.update(user_params)
  #     redirect_to @user, notice: 'User was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @user.destroy
  #   redirect_to user_url, notice: 'User was successfully destroyed.'
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :email, :encrypted_password, :address)
  end
end
