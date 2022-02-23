class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
    # current_user
    # @bookings = Booking.find(params[:id])
    @user = User.find(session[:user_id])
    @bookings = @user.bookings
  end

  def new
   # @grandmaster = Grandmaster.find(params[:grandmaster_id])
   # @user = User.find(params[:user_id])
   # @booking = Booking.new
  end

  def create
   # @grandmaster = Grandmaster.find(params[:grandmaster_id])
   # @user = User.find(params[:user_id])
   # @booking = Booking.new(booking_params)
   # @booking.grandmaster = @grandmaster
   # @booking.user = @user

  #  if @bookmark.save
  #    redirect_to @list, notice: 'Bookmark succesfully created'
  #  else
  #    render :new
  #  end
  end

  def destroy
   # @booking = Booking.find(params[:id])
   # @list = @bookmark.list
   # @booking.destroy
   # redirect_to grandmaster_path(@grandmaster)
  # redirect_to user_path(@user)
  end

  private

  def booking_params
   # params.require(:booking).permit(:message, :status, :user_id, :gm_profile_id)
  end
end
