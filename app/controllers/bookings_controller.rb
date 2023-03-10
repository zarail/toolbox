class BookingsController < ApplicationController
  before_action :set_tool, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.tool = @tool # the one we set in the private method below
    if @booking.save
      redirect_to tool_booking_path(@tool, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @total_payments = @booking.total_payments
    @image_url = @booking.tool.image_url
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end
end
