require 'spec_helper'

RSpec.describe LatestStockPrice do
  let(:sample_results) { JSON.parse(File.read('spec/support/sample_results.json')) }

  describe '.all_stock_prices' do
    it 'returns an array of Stock objects' do
      VCR.use_cassette('api_any') do
        stock_prices = LatestStockPrice.all_stock_prices

        expect(stock_prices).to be_an_instance_of(Array)
        expect(stock_prices).to all(be_an_instance_of(LatestStockPrice::Stock))
      end
    end
  end

  describe '.price_for_indices' do
    let(:indices) { 'NIFTY 50' }

    it 'returns an array of Stock objects for specified indices' do
      VCR.use_cassette('api_price') do
        stock_prices = LatestStockPrice.price_for_indices(indices)

        expect(stock_prices).to be_an_instance_of(Array)
        expect(stock_prices).to all(be_an_instance_of(LatestStockPrice::Stock))
      end
    end
  end

  describe '.list' do
    it 'prints the list of indices' do
      expect { LatestStockPrice.list }.to output(/Here's the list of indices/).to_stdout
      expect { LatestStockPrice.list }.to output(/NIFTY 50/).to_stdout
    end
  end
end
