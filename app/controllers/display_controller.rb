class DisplayController < ApplicationController

  before_action :confirm_logged_in, except: [:front_form, :blank_form]

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

  def create
    @display = UsedDisplay.new(used_display_params)
    if @display.save
      flash[:success] = "Display tag created successfully!"
      redirect_to display_index_path
    else
      flash[:alert] = "Failed to create display tag."
      redirect_to display_index_path
    end
  end

  def edit
    @display = UsedDisplay.find(params[:id])
  end

  def update
    @display = UsedDisplay.find(params[:id])
    if @display.update_attributes(used_display_params)
      flash[:success] = "Display tag saved successfully!"
      redirect_to display_index_path
    else
      flash[:alert] = "Failed to create display tag."
      render 'edit'
    end
  end

  def destroy
    UsedDisplay.find(params[:id]).destroy
    redirect_to display_index_path
  end

  private

  def used_display_params
    params.require(:used_display).permit(:category, :sub_category, :value)
  end
end
