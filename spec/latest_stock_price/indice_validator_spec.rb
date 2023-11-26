require 'spec_helper'

RSpec.describe LatestStockPrice::IndiceValidator do
  describe '.validate' do
    context 'when indices contain commas' do
      it 'raises an ArgumentError' do
        indices_with_comma = 'NIFTY 50, NIFTY NEXT 50'
        expect do
          described_class.validate(indices_with_comma)
        end.to raise_error(ArgumentError, 'Indices cannot contain commas')
      end
    end

    context 'when indices is an array' do
      it 'raises an ArgumentError' do
        indices_array = ['NIFTY 50', 'NIFTY NEXT 50']
        expect { described_class.validate(indices_array) }.to raise_error(ArgumentError, 'Indices cannot be an array')
      end
    end

    context 'when indices is a valid string' do
      it 'does not raise an error' do
        valid_indices = 'NIFTY 50'
        expect { described_class.validate(valid_indices) }.not_to raise_error
      end
    end
  end
end
