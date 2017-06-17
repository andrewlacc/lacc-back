class DisplayController < ApplicationController

  before_action :confirm_logged_in, except: [:front_form]

  def front_form
    @brand = parse_values(UsedDisplay.search_category("brand"))
    @monitor_type = parse_values(UsedDisplay.search_category("monitor_type"))
    @size = parse_values(UsedDisplay.search_category("size"))
  end

  def index
    @brand = UsedDisplay.search_category("brand")
    @monitor_type = UsedDisplay.search_category("monitor_type")
    @size = UsedDisplay.search_category("size")
  end

  def new
    @display = UsedDisplay.new
  end

  def create
    @display = UsedDisplay.new(used_display_params)
    @display.save
    redirect_to display_index_path
  end

  def edit
    @display = UsedDisplay.find(params[:id])
  end

  def update
    @display = UsedDisplay.find(params[:id])
    @display.update_attributes(used_display_params)
    redirect_to display_index_path
  end

  def destroy
    @display = UsedDisplay.find(params[:id])
    @display.destroy
    redirect_to display_index_path
  end

  private

  def used_display_params
    params.require(:used_display).permit(:category, :sub_category, :value)
  end
end
