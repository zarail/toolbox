class ToolsController < ApplicationController
  def show
    @tools = Tool.find(params[:id])
  end
end
