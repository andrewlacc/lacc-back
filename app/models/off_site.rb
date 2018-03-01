class OffSite < ApplicationRecord
  # t.string   "location"
  # t.date     "checked_date"
  # t.text     "initial_problem", limit: 65535
  # t.string   "service_order"
  # t.string   "data"
  # t.boolean  "is_done"
  # t.datetime "created_at",                    null: false
  # t.datetime "updated_at",                    null: false
  # t.integer  "client_id"
  # t.string   "serial_number"
  # t.string   "tech"

  attr_accessor :client_name

  belongs_to :client

  scope :sort_desc, -> { order( id: :DESC ) }

  validates_presence_of :client, :checked_date
end
