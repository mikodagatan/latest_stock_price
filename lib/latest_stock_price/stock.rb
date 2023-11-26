module LatestStockPrice
  class Stock
    attr_accessor :symbol,
                  :identifier,
                  :open,
                  :day_high,
                  :day_low,
                  :last_price,
                  :previous_close,
                  :change,
                  :p_change,
                  :year_high,
                  :year_low,
                  :total_traded_volume,
                  :total_traded_value,
                  :last_update_time,
                  :per_change_365d,
                  :per_change_30d

    def initialize(data)
      @symbol = data['symbol']
      @identifier = data['identifier']
      @open = data['open']
      @day_high = data['dayHigh']
      @day_low = data['dayLow']
      @last_price = data['lastPrice']
      @previous_close = data['previousClose']
      @change = data['change']
      @p_change = data['pChange']
      @year_high = data['yearHigh']
      @year_low = data['yearLow']
      @total_traded_volume = data['totalTradedVolume']
      @total_traded_value = data['totalTradedValue']
      @last_update_time = data['lastUpdateTime']
      @per_change_365d = data['perChange365d']
      @per_change_30d = data['perChange30d']
    end
  end
end
