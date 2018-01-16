class AddServiceIdToSubscriptions < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :service_id, :integer
  end
end
