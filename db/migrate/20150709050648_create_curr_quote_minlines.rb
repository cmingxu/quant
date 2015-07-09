# -*- encoding : utf-8 -*-
class CreateCurrQuoteMinlines < ActiveRecord::Migration
  def change
    create_table :curr_quote_minlines do |t|
      t.integer :market_id
      t.string :market_name
      t.integer :stock_id
      t.string :stock_code
      t.datetime :kpsj
      t.datetime :spsj
      t.decimal :open, scale: 2, precision: 10
      t.decimal :close, scale: 2, precision: 10
      t.decimal :high, scale: 2, precision: 10
      t.decimal :low, scale: 2, precision: 10
      t.decimal :deal, scale: 2, precision: 10
      t.decimal :total_price, scale: 2, precision: 10
      t.datetime :happen_at, scale: 2, precision: 10

      t.timestamps null: false
    end
  end
end
