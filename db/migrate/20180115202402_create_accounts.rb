class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :payment_type
      t.decimal :unbilled_charges
      t.datetime :next_billing_date
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :contact_number
      t.string :email
      t.boolean :email_verified
      t.boolean :email_subscription_status

      t.timestamps
    end
  end
end
