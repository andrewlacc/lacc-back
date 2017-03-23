module BackHelper
  # Computer Pre-owned arrays
  def computer_types
    [
      "Desktops",
      "iMac Aluminum",
      "iMac Unibody",
      "iMac Slim",
      "iMac White",
      "Mac Mini",
      "Mac Mini Unibody",
      "Mac Pro",
      "Mac Pro Cylinder",
      "Laptops",
      "MacBook Pro",
      "MacBook Pro Unibody",
      "MacBook Pro Retina",
      "MacBook White",
      "MacBook Black",
      "MacBook White Unibody",
      "MacBook Alum Unibody",
      "MacBook Retina (USB-C)",
      "Macbook Pro Touch Bar",
      "MacBook Air (1 x USB)",
      "MacBook Air Unibody"
    ]
  end

  def year_section
    [
      "Early",
      "Mid",
      "Late"
    ]
  end

  def processor_speed
    [
      "1.1 Ghz",
      "1.2 Ghz",
      "1.3 Ghz",
      "1.4 Ghz",
      "1.6 Ghz",
      "1.7 Ghz",
      "1.8 Ghz",
      "1.83 Ghz",
      "1.86 Ghz",
      "2.0 Ghz",
      "2.13 Ghz",
      "2.16 Ghz",
      "2.2 Ghz",
      "2.26 Ghz",
      "2.3 Ghz",
      "2.33 Ghz",
      "2.4 Ghz",
      "2.5 Ghz",
      "2.53 Ghz",
      "2.6 Ghz",
      "2.66 Ghz",
      "2.7 Ghz",
      "2.8 Ghz",
      "2.9 Ghz",
      "2.93 Ghz",
      "3.0 Ghz",
      "3.06 Ghz",
      "3.1 Ghz",
      "3.2 Ghz",
      "3.3 Ghz",
      "3.33 Ghz",
      "3.4 Ghz",
      "3.5 Ghz",
      "3.6 Ghz",
      "3.7 Ghz",
      "4.0 Ghz"
    ]
  end

  def cpu_type
    [
      "Core 2 Duo",
      "4-Core Xeon (4x Cores)",
      "6-Core Xeon (6x Cores)",
      "8-Core Xeon (8x Cores)",
      "12-Core Xeon (12x Cores)",
      "Core i3 (Dual Core)",
      "Core i5 (Dual Core)",
      "Core i7 (Dual Core)",
      "Core i5 Quad",
      "Core i7 Quad",
      "Core M"
    ]
  end

  def screen_size
    [
      "N/A",
      "11 in.",
      "12 in.",
      "13 in.",
      "15 in.",
      "17 in.",
      "20 in.",
      "21.5 in.",
      "24 in.",
      "27 in.",
      "other: _________________"
    ]
  end

  def hard_drive
    [
      "120 GB",
      "160 GB",
      "250 GB",
      "320 GB",
      "500 GB",
      "640 GB",
      "750 GB",
      "1 TB",
      "2 TB",
      "3 TB",
      "4 TB",
      "1 TB Fusion",
      "4 TB Fusion",
      "128 GB SSD",
      "250 GB SSD",
      "512 GB SSD",
      "1 TB SSD",
      "120 GB SSD",
      "240 GB SSD",
      "480 GB SSD",
      "960 GB SSD"
    ]
  end

  def optical_drive
    [
      "N/A",
      "SuperDrive SL",
      "SuperDrive DL",
      "Dual SuperDrive SL",
      "Dual SuperDrive DL"
    ]
  end

  def card_slot
    [
      "N/A",
      "ExpressCard/34",
      "SD"
    ]
  end

  def ram
    [
      "1 GB",
      "2 GB",
      "3 GB",
      "4 GB",
      "5 GB",
      "6 GB",
      "8 GB",
      "10 GB",
      "12 GB",
      "16 GB",
      "20 GB",
      "24 GB",
      "32 GB",
      "64 GB"
    ]
  end

  def max_ram
    [
      "1 GB",
      "2 GB",
      "3 GB",
      "4 GB",
      "5 GB",
      "6 GB",
      "8 GB",
      "10 GB",
      "12 GB",
      "16 GB",
      "32 GB",
      "64 GB",
      "96 GB",
      "128 GB"
    ]
  end

  def open_slots
    [
      "none",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8"
    ]
  end

  def osx
    [
      "Snow Leopard 10.6.8",
      "Lion 10.7.5",
      "Mountain Lion 10.8.5",
      "Mavericks 10.9.5",
      "Yosemite 10.10.5",
      "El Capitan 10.11.6",
      "Sierra 10.12.x"
    ]
  end

  def max_os
    [
      "Snow Leopard - 10.6",
      "Lion - 10.7",
      "El Capitan - 10.11",
      "Sierra - 10.12"
    ]
  end

  def battery
    [
      "N/A",
      "Good",
      "Consumed",
      "Bad"
    ]
  end

  def video_card
    [
      "NVIDIA",
      "GeForce 320M",
      "GeForce 7300GT",
      "GeForce 7600GT",
      "GeForce 8600M GT",
      "GeForce 8800GS",
      "GeForce 8800GT",
      "GeForce 9400M",
      "GeForce 9600M GT",
      "GeForce GT 120",
      "GeForce GT 130",
      "GeForce GT 330M &amp; IHD",
      "GeForce GT 640M",
      "GeForce GT 650M",
      "GeForce GT 650M &amp; IHD 4000",
      "GeForce GT 750M",
      "GeForce GT 750M &amp; Iris 5200",
      "GeForce GT755M",
      "GeForce GTX 660M",
      "GeForce GTX 675MX",
      "GeForce GTX 680MX",
      "GeForce GTX 775M",
      "GeForce GTX 780M",
      "Quadro FX 4500",
      "Quadro FX 5600",
      "----------",
      "AMD/ATI",
      "FirePro D300 X2",
      "FirePro D500 X2",
      "FirePro D700 X2",
      "Radeon HD 2400XT",
      "Radeon HD 2600 Pro",
      "Radeon HD 2600XT",
      "Radeon HD 4670",
      "Radeon HD 4850",
      "Radeon HD 4870",
      "Radeon HD 5670",
      "Radeon HD 5750",
      "Radeon HD 5770",
      "Radeon HD 5870",
      "Radeon HD 6490M &amp; IHD 3000",
      "Radeon HD 6630M",
      "Radeon HD 6750M",
      "Radeon HD 6750M &amp; IHD 3000",
      "Radeon HD 6770M",
      "Radeon HD 6770M &amp; IHD 3000",
      "Radeon HD 6970M",
      "Radeon X1600",
      "Radeon X1900XT",
      "Radeon R9 M290",
      "Radeon R9 M290X",
      "Radeon R9 M295X",
      "Radeon R9 M370X",
      "----------",
      "Intel",
      "GMA 950",
      "GMA X3100",
      "HD Graphics",
      "HD Graphics 3000",
      "HD Graphics 4000",
      "HD Graphics 5000",
      "HD Graphics 5300",
      "HD Graphics 6000",
      "Iris 5100",
      "Iris 6100",
      "Iris Pro 5200",
      "----------",
      "other: ___________________"
    ]
  end

  def video_ram
    [
      "64 MB Shared",
      "128 MB",
      "144 MB Shared",
      "256 MB",
      "256 MB Shared",
      "256 MB / 256 MB Shared",
      "256 MB / 384 MB Shared",
      "288 MB Shared",
      "384 MB Shared",
      "512 MB",
      "512 MB / 256 MB Shared",
      "1 GB",
      "1 GB / 384 MB Shared",
      "1.5 GB",
      "2 GB",
      "3 GB",
      "4 GB",
      "6 GB"
    ]
  end

  def video_port
    [
      "DVI",
      "DVI x 2",
      "DVI & Mini-DisplayPort",
      "DVI & Mini-DisplayPort x 2",
      "Mini-DVI",
      "Mini-DVI & Mini-DisplayPort",
      "Mini-DisplayPort",
      "Mini-DisplayPort & HDMI",
      "ThunderBolt",
      "ThunderBolt x 2",
      "ThunderBolt & HDMI",
      "ThunderBolt x 2 & HDMI",
      "ThunderBolt 2 x 6 & HDMI",
      "USB-C",
      "----------",
      "other: ___________________"
    ]
  end

  # Display Pre-owned variabes
  def brand
    [
      "Apple",
      "Acer",
      "Asus",
      "Dell",
      "Gateway",
      "HP",
      "LG",
      "Samsung",
      "Sony",
      "other: ________________"
    ]
  end

  def monitor_types
    [
      "CRT",
	  	"ADC Display",
	  	"Aluminum Display",
	  	"Widescreen",
	  	"4:3",
      "4K / 2K Monitors",
      "Touchscreen Monitors",
      "UltraWide Monitors",
      "Curved Monitors",
      "other: ________________"
    ]
  end

  def display_sizes
    [
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
      "32",
      "33",
      "34"
    ]
  end

  def yes_no
    [
      "yes",
      "no"
    ]
  end
end
