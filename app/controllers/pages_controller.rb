class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    # @sent_bookings = current_user.bookings
    # @tools = current_user.tools
  end
end
