class AddServiceToOnSite < ActiveRecord::Migration[5.0]
  def change
    add_column(:on_sites, :invoice_number, :string)
  end
end
