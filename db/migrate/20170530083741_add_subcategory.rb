class AddSubcategory < ActiveRecord::Migration[5.0]
  def change
    add_column('used_computers', 'sub_category', :string, defualt: 'N/A', after: 'category')
    add_column('used_displays', 'sub_category', :string, defualt: 'N/A', after: 'category')
  end
end
