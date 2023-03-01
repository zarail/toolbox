class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def show
    @tool = Tool.find(params[:id])
  end

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
      flash.now[:success] = "The Tool has been created"
    else
      flash.now[:error] = "Your data is not saved. Please provide valid data and try again."
      render :new
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :image_url, :description)

  end
end
