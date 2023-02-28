class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @tools = Tool.all
  end
end
