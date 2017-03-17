class CreateCustomers < ActiveRecord::Migration[5.0]
  def up
    create_table :customers do |t|
      t.string :customer_number
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :referred_by

      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end
