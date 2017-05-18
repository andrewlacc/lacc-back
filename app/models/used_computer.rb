class UsedComputer < ApplicationRecord

    scope :computer_type, -> { where(catagory: "computer_type") }

end
