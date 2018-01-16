class RemoveProductIdFromSubscriptions < ActiveRecord::Migration[5.0]
  def change
    remove_column :subscriptions, :product_id, :integer
  end
end
