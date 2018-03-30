module ApplicationHelper
  def build_pagination(current_page, max_page)
    return (1..max_page) if max_page <= 5

    return (1..5) if current_page <= 3

    (current_page - 2)..(current_page + 2)
  end
end
