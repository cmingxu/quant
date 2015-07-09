# == Schema Information
#
# Table name: perdeals
#
#  id         :integer          not null, primary key
#  stock_id   :integer
#  stock_code :string(255)
#  happen_at  :datetime
#  hqzjcj     :decimal(10, 2)
#  hqzjsl     :decimal(10, 2)
#  hqcjje     :decimal(10, 2)
#  hqcjbs     :decimal(10, 2)
#  bsflag     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PerdealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
