# -*- encoding : utf-8 -*-
class AddOpenidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :openid, :string
  end
end
