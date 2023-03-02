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
      redirect_to tools_path
      # flash.now[:success] = "The Tool has been created"
    else
      render :new
    end

    def show
      @booking = Booking.find(params[:id])
      total_earnings = @booking.total_earnings
      total_payments = @booking.total_payments
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end
end
