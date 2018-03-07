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

  def computer_tags
    [ { title: "Computer Type", header_id: "computer_type_heading", id: "computer_type", data: @computer_type },
      { title: "Processor Speed", header_id: "processor_speed_heading", id: "processor_speed", data: @processor_speed },
      { title: "CPU Type", header_id: "cpu_type_heading", id: "cpu_type", data: @cpu_type },
      { title: "Screen Size", header_id: "screen_size_heading", id: "screen_size", data: @screen_size },
      { title: "Hard Drive", header_id: "hard_drive_heading", id: "hard_drive", data: @hard_drive },
      { title: "Optical Drive", header_id: "optical_drive_heading", id: "optical_drive", data: @optical_drive },
      { title: "Card Slot", header_id: "card_slot_heading", id: "card_slot", data: @card_slot },
      { title: "Installed Ram", header_id: "installed_ram_heading", id: "installed_ram", data: @installed_ram },
      { title: "Max Ram", header_id: "max_ram_heading", id: "max_ram", data: @max_ram },
      { title: "Open Slots", header_id: "Open Slots", id: "open_slots", data: @open_slots },
      { title: "Operating System", header_id: "OS", id: "os", data: @os },
      { title: "Video Card", header_id: "Video Card", id: "video_card", data: @video_card },
      { title: "Video Ram", header_id: "Video RAM", id: "video_ram", data: @video_ram },
      { title: "Video Port", header_id: "Video Port", id: "video_port", data: @video_port } ]
  end

end
