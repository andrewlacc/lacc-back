class AddSerialNum < ActiveRecord::Migration[5.0]
  def change
    add_column(:off_sites, :serial_number, :string)
  end
end
