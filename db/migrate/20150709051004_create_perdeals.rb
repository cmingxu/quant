class CreatePerdeals < ActiveRecord::Migration
  def change
    create_table :perdeals do |t|
      t.integer :stock_id
      t.string :stock_code
      t.datetime :happen_at
      t.decimal :hqzjcj, scale: 2, precision: 10
      t.decimal :hqzjsl, scale: 2, precision: 10
      t.decimal :hqcjje, scale: 2, precision: 10
      t.decimal :hqcjbs, scale: 2, precision: 10
      t.boolean :bsflag, scale: 2, precision: 10

      t.timestamps null: false
    end
  end
end
