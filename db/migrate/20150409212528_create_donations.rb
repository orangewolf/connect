class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.decimal :amount, :precision => 10, :scale => 2
      t.integer :need_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
