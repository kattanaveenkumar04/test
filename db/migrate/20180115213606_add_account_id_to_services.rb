class AddAccountIdToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :account_id, :integer
  end
end
