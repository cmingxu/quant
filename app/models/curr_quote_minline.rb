# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: curr_quote_minlines
#
#  id          :integer          not null, primary key
#  market_id   :integer
#  market_name :string(255)
#  stock_id    :integer
#  stock_code  :string(255)
#  kpsj        :datetime
#  spsj        :datetime
#  open        :decimal(10, 2)
#  close       :decimal(10, 2)
#  high        :decimal(10, 2)
#  low         :decimal(10, 2)
#  deal        :decimal(10, 2)
#  total_price :decimal(10, 2)
#  happen_at   :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class CurrQuoteMinline < ActiveRecord::Base
end
