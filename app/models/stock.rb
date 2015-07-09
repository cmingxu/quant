# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: stocks
#
#  id          :integer          not null, primary key
#  market_id   :integer
#  market_name :string(255)
#  code        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Stock < ActiveRecord::Base
end
