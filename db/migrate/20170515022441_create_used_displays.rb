class CreateUsedDisplays < ActiveRecord::Migration[5.0]
  def change
    create_table :used_displays do |t|
      t.string "type"
      t.string "value"

      t.timestamps
    end
  end
end
