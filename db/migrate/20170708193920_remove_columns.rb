class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column(:on_sites, :name)
    remove_column(:on_sites, :company)
    remove_column(:on_sites, :phone)
    remove_column(:on_sites, :alt_phone)
    remove_column(:on_sites, :email)
    remove_column(:on_sites, :street)
    remove_column(:on_sites, :city)
    remove_column(:on_sites, :state)
    remove_column(:on_sites, :zip)
  end
end
