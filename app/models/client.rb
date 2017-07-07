class Client < ApplicationRecord

  has_many :off_sites
  has_many :on_sites

  validates_presence_of :name,
                        :phone
end
