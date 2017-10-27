class Setting < ApplicationRecord
  # t.decimal  "tax",        precision: 10
  # t.datetime "created_at",                null: false
  # t.datetime "updated_at",                null: false
  # t.integer  "user_id"

  belongs_to :user

  validates_presence_of :user_id
end
