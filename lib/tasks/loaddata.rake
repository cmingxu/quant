task :load_data => :environment do
  $l = Logger.new $stdout

  def stock_table
    TableName.table_name = "stocks"
    group = TableName.all
    group.each do |s|
      next if Stock.find_by(code: s.hqzqdm)
      Stock.create do |stock|
        stock.market_id = Market.where(code: s.marketid).first.id
        stock.market_name = Market.where(code: s.marketid).first.name
        stock.code = s.hqzqdm
      end
    end
  end

  def his_quote_dayline
    TableName.table_name = "curr_quote_minline"
    while true
      now_count = CurrQuoteMinline.count

      $l.info("now_count  #{now_count}")
      begin
        group = TableName.order('quote_time asc').offset(now_count).limit(1000)
      rescue
        next
      end
      group.each do |s|
        next if s.quote_time.blank?
        begin
          time = Time.parse(s.quote_time)
        rescue
          next
        end

        if Stock.where(code: s.ZQDM).first.nil?
          next
        end
        CurrQuoteMinline.create do |cqm|
          cqm.market_id = Market.where(code: s.marketid).first.id
          cqm.market_name = Market.where(code: s.marketid).name
          cqm.stock_id   = Stock.where(code: s.ZQDM).first.id
          cqm.stock_code   = Stock.where(code: s.ZQDM).first.code
          cqm.kpsj     = Time.parse(time.strftime("%Y%m%d") + s.KPSJ.to_s)
          cqm.spsj     = Time.parse(time.strftime("%Y%m%d") + s.SPSJ.to_s)
          cqm.open     = s.KPJ
          cqm.close    = s.SPJ
          cqm.high     = s.ZGJ
          cqm.low      = s.ZDJ
          cqm.deal     = s.ZCJL
          cqm.total_price = s.ZCJE
          cqm.happen_at = time
        end
      end
      return if group.length < 1000
    end
  end

  class Bingo < ActiveRecord::Base; self.abstract_class = true; end

  Bingo.establish_connection adapter: :mysql2, database: "hqservice", username: "root", password: "6008Mark", host: "chong.so"
  class TableName < Bingo; end

  $l.info "migrate stocks table "
  #stock_table
  his_quote_dayline



end
