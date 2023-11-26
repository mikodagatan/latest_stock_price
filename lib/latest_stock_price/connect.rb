module LatestStockPrice
  class Connect
    class << self
      API_BASE_URL = 'https://latest-stock-price.p.rapidapi.com'.freeze
      API_KEY = '651b77b79dmsh5fb87e8a16b1859p18d521jsn71dfa4fc05d7'.freeze

      def request(path)
        url = URI("#{API_BASE_URL}#{path}")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Get.new(url)
        request['X-RapidAPI-Key'] = API_KEY
        request['X-RapidAPI-Host'] = 'latest-stock-price.p.rapidapi.com'

        http.request(request)
      end
    end
  end
end
