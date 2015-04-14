class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :title
      t.string :tagline

      t.timestamps null: false
    end
  end
end
