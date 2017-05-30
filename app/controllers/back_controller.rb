class BackController < ApplicationController
  def index
    # Home page, will just display different links
  end

  def display
  end

  def computer
    @desktops = UsedComputer.search_subcategory("desktop")
    @desktop_values = parse_values(@desktops)
  end

  def computer_trade_in
    # Will display static trade-in Sheet
  end

  def onsite
    # Will display static onsite sheet
  end
end
