class Admin::CurrQuoteMinlinesController < Admin::BaseController
  def index
    @curr_quote_minlines = CurrQuoteMinline.page params[:page]
  end
end
