class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :included_data
      t.string :included_credit
      t.string :included_international_talk
      t.boolean :unlimited_text
      t.boolean :unlimited_talk
      t.boolean :unlimited_international_text
      t.boolean :unlimited_international_talk
      t.decimal :price

      t.timestamps
    end
  end
end
