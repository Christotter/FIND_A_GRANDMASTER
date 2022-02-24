class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
    # current_user
    # @bookings = Booking.find(params[:id])
    # warden.user.user.key
    @sent_bookings = current_user.sent_bookings
    @received_bookings = current_user.received_bookings
  end

  def new
    @grandmaster = Grandmaster.find(params[:grandmaster_id])
    # @user = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @grandmaster = Grandmaster.find(params[:grandmaster_id])
    # @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.grandmaster = @grandmaster
    @booking.user = current_user
    #@booking.user = @user
    if @booking.save
      redirect_to bookings_path, notice: 'Booking succesfully created'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    # @list = @bookmark.list
    @booking.destroy
    redirect_to grandmaster_path(@grandmaster)
    # redirect_to user_path(@user)
  end

  private

  def booking_params
    params.require(:booking).permit(:message)
  end
end
