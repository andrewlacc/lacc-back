class Client < ApplicationRecord

  has_many :off_sites
  has_many :on_sites

  scope :sort_by_name, -> { order(name: :ASC) }

  validates_presence_of :name,
                        :phone
end
