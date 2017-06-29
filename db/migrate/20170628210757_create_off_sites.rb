class CreateOffSites < ActiveRecord::Migration[5.0]
  def change
    create_table :off_sites do |t|
      t.string :location
      t.date :checked_date
      t.text :initial_problem
      t.string :service_order
      t.string :data
      t.boolean :is_done

      t.timestamps
    end
  end
end
