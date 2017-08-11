class User < ApplicationRecord
  # t.string   "userid"
  # t.string   "name"
  # t.string   "email"
  # t.string   "password_digest"
  # t.datetime "created_at",      null: false
  # t.datetime "updated_at",      null: false

  has_secure_password

  validates_presence_of :userid,
                        :name,
                        :password_digest
end
