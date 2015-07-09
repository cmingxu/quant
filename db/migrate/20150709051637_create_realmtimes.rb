class CreateRealmtimes < ActiveRecord::Migration
  def change
    create_table :realmtimes do |t|
      t.datetime :happen_at
      t.integer :market_id
      t.string :mark_code
      t.string :stock_code
      t.string :stock_short_name
      t.decimal :zrsp, scale: 2, precision: 10
      t.decimal :jrkp, scale: 2, precision: 10
      t.decimal :zjcj, scale: 2, precision: 10
      t.decimal :cjsl, scale: 2, precision: 10
      t.decimal :cjje, scale: 2, precision: 10
      t.decimal :cjbs, scale: 2, precision: 10
      t.decimal :zgcj, scale: 2, precision: 10
      t.decimal :zdcj, scale: 2, precision: 10
      t.decimal :syl1, scale: 2, precision: 10
      t.decimal :syl2, scale: 2, precision: 10
      t.decimal :jsd1, scale: 2, precision: 10
      t.decimal :jsd2, scale: 2, precision: 10
      t.decimal :gycc, scale: 2, precision: 10
      t.decimal :sjw5, scale: 2, precision: 10
      t.decimal :ssl5, scale: 2, precision: 10
      t.decimal :sjw4, scale: 2, precision: 10
      t.decimal :ssl4, scale: 2, precision: 10
      t.decimal :sjw3, scale: 2, precision: 10
      t.decimal :ssl3, scale: 2, precision: 10
      t.decimal :sjw2, scale: 2, precision: 10
      t.decimal :ssl2, scale: 2, precision: 10
      t.decimal :sjw1, scale: 2, precision: 10
      t.decimal :ssl1, scale: 2, precision: 10
      t.decimal :bjw1, scale: 2, precision: 10
      t.decimal :bsl1, scale: 2, precision: 10
      t.decimal :bjw2, scale: 2, precision: 10
      t.decimal :bsl2, scale: 2, precision: 10
      t.decimal :bjw3, scale: 2, precision: 10
      t.decimal :bsl3, scale: 2, precision: 10
      t.decimal :bjw4, scale: 2, precision: 10
      t.decimal :bsl4, scale: 2, precision: 10
      t.decimal :bjw5, scale: 2, precision: 10
      t.decimal :bsl5, scale: 2, precision: 10
      t.decimal :cjav, scale: 2, precision: 10

      t.timestamps null: false
    end
  end
end
