module LatestStockPrice
  class Connect
    class << self
      API_BASE_URL = 'https://latest-stock-price.p.rapidapi.com'.freeze
      API_KEY = ENV['RAPID_API_LATEST_STOCK_PRICE_API_KEY'].freeze

      def request(path)
        url = URI("#{API_BASE_URL}#{path}")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Get.new(url)
        request['X-RapidAPI-Key'] = API_KEY
        request['X-RapidAPI-Host'] = 'latest-stock-price.p.rapidapi.com'

        response = http.request(request)

        return response unless response.body.include?('Invalid API key')

        raise StandardError, "Invalid API key for ENV['RAPID_API_LATEST_STOCK_PRICE_API_KEY']"
      end
    end
  end
end
