class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @no_navbar = true
  end

  def dashboard
    # @sent_bookings = current_user.bookings
    # @tools = current_user.tools
  end
end
