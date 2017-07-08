class OnSite < ApplicationRecord

  belongs_to :client

  scope :sort_by_date_desc, -> { order( onsite_date: :DESC ) }

  validates_presence_of :onsite_date
end
