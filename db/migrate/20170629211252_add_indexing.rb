class AddIndexing < ActiveRecord::Migration[5.0]
  def change
    add_column(:used_computers, :sub_index, :integer)
    add_index(:used_computers, :sub_index)
    add_column(:used_displays, :sub_index, :integer)
    add_index(:used_displays, :sub_index)

    remove_column(:used_displays, :sub_category)
  end
end
