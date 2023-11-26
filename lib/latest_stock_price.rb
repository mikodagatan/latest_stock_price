require 'latest_stock_price/config'

require 'latest_stock_price/stock'
require 'latest_stock_price/stock_mapper'
require 'latest_stock_price/constants'
require 'latest_stock_price/connect'
require 'latest_stock_price/indice_validator'

require 'uri'
require 'net/http'
require 'json'

module LatestStockPrice
  class << self
    def all_stock_prices
      path = '/any'

      response = Connect.request(path)
      StockMapper.map(JSON.parse(response.body))
    end

    # NOTE: price and prices have the same endpoint.
    def price_for_indices(indices)
      IndiceValidator.validate(indices)

      path = "/price?Indices=#{URI.encode_www_form_component(indices)}"

      response = Connect.request(path)
      StockMapper.map(JSON.parse(response.body))
    end

    def list
      puts "Here's the list of indices to use for LatestStockPrice.price_for_indices:"
      puts INDICES
    end
  end
end
