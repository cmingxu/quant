class ChangeDeal < ActiveRecord::Migration
  def change
    change_column :curr_quote_minlines, :deal, :decimal, precision: 16, scale: 2
  end
end
