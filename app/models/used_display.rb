class UsedDisplay < ApplicationRecord
  scope :search_category, -> (search) { where(category: search) }
  scope :get_category_length, -> (category) { where(category: category).length }
end
