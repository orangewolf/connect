class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :title
      t.datetime :posted_at
      t.text :description
      t.decimal :amount_requested, :precision => 10, :scale => 2
      t.decimal :amount_donated, :precision => 10, :scale => 2, :default => 0.0

      t.timestamps null: false
    end
  end
end
