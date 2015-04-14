class AddImageToOrganization < ActiveRecord::Migration
  def change
    add_attachment :organizations, :image
  end
end
