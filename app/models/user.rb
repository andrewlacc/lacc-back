class User < ApplicationRecord
  # t.string   "userid"
  # t.string   "name"
  # t.string   "email"
  # t.string   "password_digest"
  # t.datetime "created_at",      null: false
  # t.datetime "updated_at",      null: false
  # t.string   "access_level"

  has_secure_password

  has_one :setting

  validates_presence_of :userid,
                        :name,
                        :password_digest,
                        :access_level
end
