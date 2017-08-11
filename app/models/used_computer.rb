class UsedComputer < ApplicationRecord
  # t.string   "category"
  # t.string   "sub_category"
  # t.string   "value"
  # t.datetime "created_at",   null: false
  # t.datetime "updated_at",   null: false
  # t.integer  "sub_index"

  scope :search_category, -> (search) { where(category: search) }
  scope :search_subcategory, -> (search) { where(sub_category: search) }
  scope :get_category_length, -> (category) { where(category: category).length }
  scope :sort_by_sub_index, -> { order(sub_index: :ASC) }
  scope :sort_by_sub_category, -> { order(sub_category: :ASC) }

  validates_presence_of :value
end
