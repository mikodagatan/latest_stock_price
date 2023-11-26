require 'spec_helper'

module LatestStockPrice
  RSpec.describe 'Constants' do
    describe 'INDICES' do
      it 'contains the expected indices' do
        expected_indices = [
          'NIFTY 50',
          'NIFTY NEXT 50',
          'NIFTY 100',
          'NIFTY 200',
          'NIFTY 500',
          'NIFTY MIDCAP 50',
          'NIFTY MIDCAP 100',
          'NIFTY MIDCAP 150',
          'NIFTY SMLCAP 50',
          'NIFTY SMLCAP 100',
          'NIFTY SMLCAP 250',
          'NIFTY MIDSML 400',
          'NIFTY BANK',
          'NIFTY AUTO',
          'NIFTY FINSRV25 50',
          'NIFTY FIN SERVICE',
          'NIFTY FMCG',
          'NIFTY IT',
          'NIFTY MEDIA',
          'NIFTY METAL',
          'NIFTY INFRA',
          'NIFTY ENERGY',
          'NIFTY PHARMA',
          'NIFTY PSU BANK',
          'NIFTY PVT BANK'
        ]

        expect(INDICES).to eq(expected_indices)
      end
    end
  end
end
