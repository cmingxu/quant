class ChangeTotalPrice < ActiveRecord::Migration
  def change
    change_column :curr_quote_minlines, :total_price, :decimal, precision: 16, scale: 2
  end
end
