module ApplicationHelper
  # Site-wide arrays
  def yes_no
    [ "yes", "no" ]
  end

  def build_pagination(current_page, max_page)
    return (1..max_page) if max_page <= 3

    return (1..3) if current_page <= 2

    return (current_page - 2)..(current_page + 2)
  end
end
