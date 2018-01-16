class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :msn
      t.decimal :credit
      t.datetime :credit_expiry
      t.boolean :data_usage_threshold

      t.timestamps
    end
  end
end
