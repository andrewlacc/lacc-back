module DisplayHelper
  def display_categories
    [ "brand", "monitor_type", "size" ]
  end

  def display_sub_categories
    [ "N/A" ]
  end

  def display_tags
    [ { title: "Brand", header_id: "brand_heading", id: "brand", data: @brand },
      { title: "Monitor Type", header_id: "monitor_type_heading", id: "monitor_type", data: @monitor_type },
      { title: "Size", header_id: "size_heading", id: "size", data: @size } ]
  end
end
