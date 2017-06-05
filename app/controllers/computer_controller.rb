class ComputerController < ApplicationController

  before_action :confirm_logged_in, except: [:front_form]

  def front_form
    @desktop_values = parse_values(UsedComputer.search_subcategory("desktop"))
    @laptop_values = parse_values(UsedComputer.search_subcategory("laptop"))
    @processor_speed = parse_values(UsedComputer.search_category("processor_speed"))
    @cpu_type = parse_values(UsedComputer.search_category("cpu_type"))
    @screen_size = parse_values(UsedComputer.search_category("screen_size"))
    @hdd = parse_values(UsedComputer.search_subcategory("hdd"))
    @fusion = parse_values(UsedComputer.search_subcategory("fusion"))
    @ssd = parse_values(UsedComputer.search_subcategory("ssd"))
    @optical_drive = parse_values(UsedComputer.search_category("optical_drive"))
    @card_slot = parse_values(UsedComputer.search_category("card_slot"))
    @ram = parse_values(UsedComputer.search_category("installed_ram"))
    @max_ram = parse_values(UsedComputer.search_category("max_ram"))
    @open_slots = parse_values(UsedComputer.search_category("open_slots"))
    @os = parse_values(UsedComputer.search_category("os"))
    @max_os = parse_values(UsedComputer.search_subcategory("max_os"))
    @nvidia = parse_values(UsedComputer.search_subcategory("nvidia"))
    @amd = parse_values(UsedComputer.search_subcategory("amd"))
    @intel = parse_values(UsedComputer.search_subcategory("intel"))
    @video_ram = parse_values(UsedComputer.search_category("video_ram"))
    @video_port = parse_values(UsedComputer.search_category("video_port"))
  end

  def index
    @computer_type = UsedComputer.search_category("computer_type")
    @processor_speed = UsedComputer.search_category("processor_speed")
    @cpu_type = UsedComputer.search_category("cpu_type")
    @screen_size = UsedComputer.search_category("screen_size")
    @hard_drive = UsedComputer.search_category("hard_drive")
    @optical_drive = UsedComputer.search_category("optical_drive")
    @card_slot = UsedComputer.search_category("card_slot")
    @installed_ram = UsedComputer.search_category("installed_ram")
    @max_ram = UsedComputer.search_category("max_ram")
    @open_slots = UsedComputer.search_category("open_slots")
    @os = UsedComputer.search_category("os")
    @video_card = UsedComputer.search_category("video_card")
    @video_ram = UsedComputer.search_category("video_ram")
    @video_port = UsedComputer.search_category("video_port")
  end

  def new
    @computer = UsedComputer.new()
  end

  def create
    @computer = UsedComputer.new(used_computer_params)
    @computer.save()
    redirect_to computer_index_path
  end

  def edit
    @computer = UsedComputer.find(params[:id])
  end

  def update
    @computer = UsedComputer.find(params[:id])
    @computer.update_attributes(used_computer_params)
    redirect_to computer_index_path
  end

  def destroy
    @computer = UsedComputer.find(params[:id])
    @computer.destroy()
    redirect_to computer_index_path
  end

  private

  def used_computer_params
    params.require(:used_computer).permit(:category, :sub_category, :value)
  end
end
