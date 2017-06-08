class CreateOnSites < ActiveRecord::Migration[5.0]
  def change
    create_table :on_sites do |t|
      t.string "name"
      t.string "company"
      t.string "phone"
      t.string "alt_phone"
      t.string "email"
      t.string "street"
      t.string "city"
      t.string "state"
      t.string "zip"
      t.datetime "onsite_date"
      t.text "symptoms"
      t.string "part_one"
      t.float "price_one"
      t.string "part_two"
      t.float "price_two"
      t.string "part_three"
      t.float "price_three"
      t.text "resolution"
      t.float "onsite_cost"

      t.timestamps
    end
  end
end
