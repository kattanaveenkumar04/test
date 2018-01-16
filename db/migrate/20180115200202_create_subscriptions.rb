class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.decimal :included_data_balance
      t.decimal :included_credit_balance
      t.decimal :included_rollover_credit_balance
      t.decimal :included_rollover_data_balance
      t.decimal :included_international_talk_balance
      t.datetime :expiry_date
      t.boolean :auto_renewal
      t.boolean :primary_subscription

      t.timestamps
    end
  end
end
