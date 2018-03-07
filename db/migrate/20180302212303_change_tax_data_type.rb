class ChangeTaxDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :settings, :tax, :float
  end
end
