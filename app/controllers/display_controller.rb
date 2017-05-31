class DisplayController < ApplicationController
  def front_form
    @brand = parse_values(UsedComputer.search_category("brand"))
    @monitor_type = parse_values(UsedComputer.search_category("monitor_type"))
    @size = parse_values(UsedComputer.search_category("size"))
  end

  def index
    @brand = UsedDisplay.search_category("brand")
    @monitor_type = UsedDisplay.search_category("monitor_type")
    @size = UsedDisplay.search_category("size")
  end
end
