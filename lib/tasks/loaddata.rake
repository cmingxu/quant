task :load_data => :environment do
  l = Logger.new $stdout

  class Bingo < ActiveRecord::Base; end
  Bingo.establish_connection adapter: :mysql2, database: "hqservice", username: "root", password: "6008Mark", host: "chong.so"
  class TableName < Bingo; end
  l.info "migrate stocks table "
  TableName.table_name = "stocks"
  synced_count = Stock.count
  TableName.offset(synced_count).find_in_batches do |group|
    l.info "syncing stocks #{group.first.hqzqdm}"
    group.each do |s|
      Stock.create do |stock|
        s.market_id = Market.where(code: s.markedid).first.id
        s.market_name = Market.where(code: s.markedid).first.name
        s.code = s.hqzqdm
      end
    end
  end

end
