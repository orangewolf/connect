class AddCustomerIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :braintree_last_4, :string
    add_column :users, :braintree_payment_method_token, :string
  end
end
