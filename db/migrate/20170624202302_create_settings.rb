class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.decimal :tax

      t.timestamps
    end
  end
end
