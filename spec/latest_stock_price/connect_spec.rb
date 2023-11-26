require 'spec_helper'

RSpec.describe LatestStockPrice::Connect do
  describe '.request' do
    let(:path) { '/any' }

    it 'returns a response object' do
      VCR.use_cassette('api_any') do
        response = described_class.request(path)

        expect(JSON.parse(response.body).first).to have_key('totalTradedVolume')
      end
    end
  end
end
