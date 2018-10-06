class Client < ApplicationRecord
  # t.string   "name"
  # t.string   "company"
  # t.string   "phone"
  # t.string   "alt_phone"
  # t.string   "email"
  # t.string   "street"
  # t.string   "city"
  # t.string   "state"
  # t.string   "zip"
  # t.text     "notes",      limit: 65535
  # t.datetime "created_at",               null: false
  # t.datetime "updated_at",               null: false

  has_many :off_sites
  has_many :on_sites

  validates_presence_of :name,
                        :phone,
                        :email

  validates :email, uniqueness: true
end
