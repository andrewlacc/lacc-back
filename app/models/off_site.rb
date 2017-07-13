class OffSite < ApplicationRecord

  belongs_to :client

  scope :sort_desc, -> { order( id: :DESC ) }

  validates_presence_of :client
end
