class OnSite < ApplicationRecord

  belongs_to :client

  validates_presence_of :onsite_date
end
