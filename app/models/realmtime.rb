# == Schema Information
#
# Table name: realmtimes
#
#  id               :integer          not null, primary key
#  happen_at        :datetime
#  market_id        :integer
#  mark_code        :string(255)
#  stock_code       :string(255)
#  stock_short_name :string(255)
#  zrsp             :decimal(10, 2)
#  jrkp             :decimal(10, 2)
#  zjcj             :decimal(10, 2)
#  cjsl             :decimal(10, 2)
#  cjje             :decimal(10, 2)
#  cjbs             :decimal(10, 2)
#  zgcj             :decimal(10, 2)
#  zdcj             :decimal(10, 2)
#  syl1             :decimal(10, 2)
#  syl2             :decimal(10, 2)
#  jsd1             :decimal(10, 2)
#  jsd2             :decimal(10, 2)
#  gycc             :decimal(10, 2)
#  sjw5             :decimal(10, 2)
#  ssl5             :decimal(10, 2)
#  sjw4             :decimal(10, 2)
#  ssl4             :decimal(10, 2)
#  sjw3             :decimal(10, 2)
#  ssl3             :decimal(10, 2)
#  sjw2             :decimal(10, 2)
#  ssl2             :decimal(10, 2)
#  sjw1             :decimal(10, 2)
#  ssl1             :decimal(10, 2)
#  bjw1             :decimal(10, 2)
#  bsl1             :decimal(10, 2)
#  bjw2             :decimal(10, 2)
#  bsl2             :decimal(10, 2)
#  bjw3             :decimal(10, 2)
#  bsl3             :decimal(10, 2)
#  bjw4             :decimal(10, 2)
#  bsl4             :decimal(10, 2)
#  bjw5             :decimal(10, 2)
#  bsl5             :decimal(10, 2)
#  cjav             :decimal(10, 2)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Realmtime < ActiveRecord::Base
end
