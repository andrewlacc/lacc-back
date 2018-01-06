class AddRelation < ActiveRecord::Migration[5.0]
  def change
    add_reference :settings, :user
  end
end
