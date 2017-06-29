class UsedComputer < ApplicationRecord
  scope :search_category, -> (search) { where(category: search) }
  scope :search_subcategory, -> (search) { where(sub_category: search) }
  scope :get_category_length, -> (category) { where(category: category).length }
end
