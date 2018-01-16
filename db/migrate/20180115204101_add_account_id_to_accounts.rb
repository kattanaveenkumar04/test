class AddAccountIdToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :account_id, :string
  end
end
