# == Schema Information
#
# Table name: markets
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  name       :string(255)
#  en_name    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MarketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
