class AddCustomerIdToAddressTable < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :customer_id, :integer
  end
end
