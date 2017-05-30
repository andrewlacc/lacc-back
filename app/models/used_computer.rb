class UsedComputer < ApplicationRecord

    scope :search_category, -> (search) { where(category: search) }

end
