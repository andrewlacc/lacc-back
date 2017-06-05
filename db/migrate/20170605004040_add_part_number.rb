class AddPartNumber < ActiveRecord::Migration[5.0]
  def change
    add_column('on_sites', 'part_num_one', :string, after: 'symptoms')
    add_column('on_sites', 'part_num_two', :string, after: 'price_one')
    add_column('on_sites', 'part_num_three', :string, after: 'price_two')
  end
end
