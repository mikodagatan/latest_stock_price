require 'spec_helper'

RSpec.describe LatestStockPrice::StockMapper do
  let(:api_response) do
    [
      {
        'symbol' => 'AAPL',
        'identifier' => 'AAPLEQN',
        'open' => 150.0,
        'dayHigh' => 155.0,
        'dayLow' => 148.5,
        'lastPrice' => 152.0,
        'previousClose' => 149.5,
        'change' => 2.5,
        'pChange' => 1.67,
        'yearHigh' => 160.0,
        'yearLow' => 140.0,
        'totalTradedVolume' => 1_000_000,
        'totalTradedValue' => 150_000_000.0,
        'lastUpdateTime' => '24-Nov-2023 16:00:00',
        'perChange365d' => 8.5,
        'perChange30d' => 0.5
      },
      {
        'symbol' => 'GOOGL',
        'identifier' => 'GOOGLEEQN',
        'open' => 2800.0,
        'dayHigh' => 2850.0,
        'dayLow' => 2780.0,
        'lastPrice' => 2830.0,
        'previousClose' => 2795.0,
        'change' => 35.0,
        'pChange' => 1.25,
        'yearHigh' => 2900.0,
        'yearLow' => 2700.0,
        'totalTradedVolume' => 500_000,
        'totalTradedValue' => 1_400_000_000.0,
        'lastUpdateTime' => '24-Nov-2023 16:05:00',
        'perChange365d' => 10.0,
        'perChange30d' => 2.0
      }
    ]
  end

  describe '.map' do
    subject { described_class.map(api_response) }

    it 'maps API response to an array of Stock objects' do
      expect(subject).to all(be_a(LatestStockPrice::Stock))
      expect(subject.size).to eq(2)

      # Add more expectations as needed for each stock in the array
      expect(subject.first.symbol).to eq('AAPL')
      expect(subject.last.symbol).to eq('GOOGL')
    end
  end
end
