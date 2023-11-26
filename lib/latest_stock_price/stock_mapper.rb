module LatestStockPrice
  class StockMapper
    def self.map(api_response)
      api_response.map { |stock_data| Stock.new(stock_data) }
    end
  end
end
