class CreateSentMessages < ActiveRecord::Migration
  def change
    create_table :sent_messages do |t|
      t.integer :user_id
      t.integer :message_id
      t.datetime :sent_at

      t.timestamps null: false
    end
  end
end
