require 'simplecov'

SimpleCov.start do
  add_filter '/spec/'
end

require 'bundler/setup'
Bundler.setup

require 'vcr'

require 'latest_stock_price'

RSpec.configure do |config|
  # some (optional) config here
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes/'
  config.hook_into :webmock

  config.filter_sensitive_data('<RAPIDAPI_KEY>') { ENV['RAPID_API_LATEST_STOCK_PRICE_API_KEY'] }
end
