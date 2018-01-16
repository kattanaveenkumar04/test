class AddSubscriptionIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :subscription_id, :integer
  end
end
