class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @no_navbar = true
  end

  def dashboard
    @bookings = current_user.bookings
    # @lent_tools =
    @tools = current_user.tools
    @received_bookings = @tools.map { |tool| tool.bookings }.flatten
  end

  def profile
    @user = current_user

  end
end
