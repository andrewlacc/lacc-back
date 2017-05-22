class ChangeCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column('used_computers', 'catagory', 'category')
    rename_column('used_displays', 'catagory', 'category')
  end
end
