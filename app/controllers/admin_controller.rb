class AdminController < ApplicationController

    layout 'admin'

    def create
        redirect_to(adminarea_path)
    end

    def index
    end

    def computer
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

    def display
      @brand = UsedDisplay.search_category("brand")
      @monitor_type = UsedDisplay.search_category("monitor_type")
      @size = UsedDisplay.search_category("size")
    end

    def destroy
    end

end
