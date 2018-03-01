class OnSite < ApplicationRecord
  # t.datetime "onsite_date"
  # t.text     "symptoms",       limit: 65535
  # t.string   "part_num_one"
  # t.string   "part_one"
  # t.float    "price_one",      limit: 24
  # t.string   "part_num_two"
  # t.string   "part_two"
  # t.float    "price_two",      limit: 24
  # t.string   "part_num_three"
  # t.string   "part_three"
  # t.float    "price_three",    limit: 24
  # t.text     "resolution",     limit: 65535
  # t.float    "onsite_cost",    limit: 24
  # t.datetime "created_at",                   null: false
  # t.datetime "updated_at",                   null: false
  # t.integer  "client_id"
  # t.string   "invoice_number"
  # t.string   "tech"

  attr_accessor :client_name

  belongs_to :client

  scope :sort_by_date_desc, -> { order( onsite_date: :DESC ) }

  validates_presence_of :client, :onsite_date
end
