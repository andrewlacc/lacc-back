class UsedComputer < ApplicationRecord
  scope :search_category, -> (search) { where(category: search) }
  scope :search_subcategory, -> (search) { where(sub_category: search) }
  scope :get_category_length, -> (category) { where(category: category).length }
  scope :sort_by_sub_index, -> { order(sub_index: :ASC) }
  scope :sort_by_sub_category, -> { order(sub_category: :ASC) }
end
