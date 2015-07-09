class Admin::MarketsController < Admin::BaseController
  def index
    @markets = Market.all
  end
end
