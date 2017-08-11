class UsedDisplay < ApplicationRecord
  # t.string   "category"
  # t.string   "value"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.integer  "sub_index"

  scope :search_category, -> (search) { where(category: search) }
  scope :get_category_length, -> (category) { where(category: category).length }

  validates_presence_of :value
end
