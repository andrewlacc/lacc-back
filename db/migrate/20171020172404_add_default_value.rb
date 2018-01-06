class AddDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :access_level, :string, default: 'user'
  end
end
