class OnSite < ApplicationRecord
  def total_parts_cost
    price_one = 0 if price_one == nil
    price_two = 0 if price_two == nil
    price_three = 0 if price_three == nil
    return price_one + price_two + price_three
  end
end
