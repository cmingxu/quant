class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :market_id
      t.string :market_name
      t.string :code

      t.timestamps null: false
    end
  end
end
