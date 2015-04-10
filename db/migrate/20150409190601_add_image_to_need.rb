class AddImageToNeed < ActiveRecord::Migration
  def change
    add_attachment :needs, :image
  end
end
