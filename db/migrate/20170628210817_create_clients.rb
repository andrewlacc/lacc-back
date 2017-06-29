class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :alt_phone
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.text :notes

      t.timestamps
    end
  end
end
