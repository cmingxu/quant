class Admin::StocksController < Admin::BaseController
  def index
    @stocks = Stock.page params[:page]
  end
end
