class AddColumnsForAccessAndTech < ActiveRecord::Migration[5.0]
  def change
    add_column(:users, :access_level, :string)
    add_column(:on_sites, :tech, :string)
    add_column(:off_sites, :tech, :string)
  end
end
