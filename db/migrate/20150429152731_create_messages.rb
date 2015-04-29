class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :need_id
      t.string :body
      t.timestamp :sent_at
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
