module ComputerHelper
  def computer_categories
    [ "computer_type", "processor_speed", "cpu_type", "screen_size", "hard_drive", "optical_drive",
    "card_slot", "installed_ram", "max_ram", "open_slots", "os", "video_card", "video_ram", "video_port" ]
  end

  def computer_sub_categories
    [ "N/A", "desktop", "laptop", "hdd", "fusion", "ssd", "max_os", "nvidia", "amd", "intel" ]
  end

  def year_section
    [ "Early", "Mid", "Late" ]
  end

  def battery
    [ "N/A", "Good", "Consumed", "Bad" ]
  end
end
