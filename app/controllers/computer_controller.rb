class ComputerController < ApplicationController

  before_action :confirm_logged_in, except: [:front_form, :blank_form]

  def front_form
    @desktop_values = parse_values(UsedComputer.search_subcategory("desktop").sort_by_sub_index)
    @laptop_values = parse_values(UsedComputer.search_subcategory("laptop").sort_by_sub_index)
    @processor_speed = parse_values(UsedComputer.search_category("processor_speed")).sort
    @cpu_type = parse_values(UsedComputer.search_category("cpu_type").sort_by_sub_index)
    @screen_size = parse_values(UsedComputer.search_category("screen_size").sort_by_sub_index)
    @hdd = parse_values(UsedComputer.search_subcategory("hdd").sort_by_sub_index)
    @fusion = parse_values(UsedComputer.search_subcategory("fusion").sort_by_sub_index)
    @ssd = parse_values(UsedComputer.search_subcategory("ssd").sort_by_sub_index)
    @optical_drive = parse_values(UsedComputer.search_category("optical_drive").sort_by_sub_index)
    @card_slot = parse_values(UsedComputer.search_category("card_slot").sort_by_sub_index)
    @ram = parse_values(UsedComputer.search_category("installed_ram").sort_by_sub_index)
    @max_ram = parse_values(UsedComputer.search_category("max_ram").sort_by_sub_index)
    @open_slots = parse_values(UsedComputer.search_category("open_slots").sort_by_sub_index)
    @os = parse_values(UsedComputer.search_category("os").sort_by_sub_index)
    @max_os = parse_values(UsedComputer.search_subcategory("max_os").sort_by_sub_index)
    @nvidia = parse_values(UsedComputer.search_subcategory("nvidia").sort_by_sub_index)
    @amd = parse_values(UsedComputer.search_subcategory("amd").sort_by_sub_index)
    @intel = parse_values(UsedComputer.search_subcategory("intel").sort_by_sub_index)
    @video_ram = parse_values(UsedComputer.search_category("video_ram").sort_by_sub_index)
    @video_port = parse_values(UsedComputer.search_category("video_port").sort_by_sub_index)
  end

  def index
    @computer_type = UsedComputer.search_category("computer_type").sort_by_sub_index
    @processor_speed = UsedComputer.search_category("processor_speed").sort
    @cpu_type = UsedComputer.search_category("cpu_type").sort_by_sub_index
    @screen_size = UsedComputer.search_category("screen_size").sort_by_sub_index
    @hard_drive = UsedComputer.search_category("hard_drive").sort_by_sub_index
    @optical_drive = UsedComputer.search_category("optical_drive").sort_by_sub_index
    @card_slot = UsedComputer.search_category("card_slot").sort_by_sub_index
    @installed_ram = UsedComputer.search_category("installed_ram").sort_by_sub_index
    @max_ram = UsedComputer.search_category("max_ram").sort_by_sub_index
    @open_slots = UsedComputer.search_category("open_slots").sort_by_sub_index
    @os = UsedComputer.search_category("os").sort_by_sub_index
    @video_card = UsedComputer.search_category("video_card").sort_by_sub_index
    @video_ram = UsedComputer.search_category("video_ram").sort_by_sub_index
    @video_port = UsedComputer.search_category("video_port").sort_by_sub_index
  end

  def create
    @computer = UsedComputer.new(used_computer_params)
    if @computer.save
      flash[:success] = "Computer tag created successfully!"
      redirect_to computer_index_path
    else
      flash[:alert] = "Failed to create computer tag."
      redirect_to computer_index_path
    end
  end

  def edit
    @computer = UsedComputer.find(params[:id])
  end

  def update
    @computer = UsedComputer.find(params[:id])
    if @computer.update_attributes(used_computer_params)
      flash[:success] = "Computer tag saved successfully!"
      redirect_to computer_index_path
    else
      flash[:alert] = "failed to save computer tag"
      render 'edit'
    end
  end

  def destroy
    UsedComputer.find(params[:id]).destroy
    redirect_to computer_index_path
  end

  private

  def used_computer_params
    params.require(:used_computer).permit(:category, :sub_category, :value, :sub_index)
  end
end
