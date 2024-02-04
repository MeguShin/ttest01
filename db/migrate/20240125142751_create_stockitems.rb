class CreateStockitems < ActiveRecord::Migration[6.1]
  def change
    create_table :stockitems do |t|
      t.string :name
      t.integer :quantity
      t.datetime :purchase_date
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
