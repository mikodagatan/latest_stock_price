require 'spec_helper'

RSpec.describe LatestStockPrice::Stock do
  let(:stock_data) do
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
    }
  end

  subject { described_class.new(stock_data) }

  it 'sets attributes based on data' do
    expect(subject.symbol).to eq('AAPL')
    expect(subject.identifier).to eq('AAPLEQN')
    expect(subject.open).to eq(150.0)
    expect(subject.day_high).to eq(155.0)
    expect(subject.day_low).to eq(148.5)
    expect(subject.last_price).to eq(152.0)
    expect(subject.previous_close).to eq(149.5)
    expect(subject.change).to eq(2.5)
    expect(subject.p_change).to eq(1.67)
    expect(subject.year_high).to eq(160.0)
    expect(subject.year_low).to eq(140.0)
    expect(subject.total_traded_volume).to eq(1_000_000)
    expect(subject.total_traded_value).to eq(150_000_000.0)
    expect(subject.last_update_time).to eq('24-Nov-2023 16:00:00')
    expect(subject.per_change_365d).to eq(8.5)
    expect(subject.per_change_30d).to eq(0.5)
  end
end
