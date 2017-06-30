class AddRelations < ActiveRecord::Migration[5.0]
  def change
    add_column(:off_sites, :client_id, :integer)
    add_index(:off_sites, :client_id)
    add_column(:on_sites, :client_id, :integer)
    add_index(:on_sites, :client_id)
  end
end
