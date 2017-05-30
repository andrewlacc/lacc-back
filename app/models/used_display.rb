class UsedDisplay < ApplicationRecord
  scope :search_category, -> (search) { where(category: search) }
end
