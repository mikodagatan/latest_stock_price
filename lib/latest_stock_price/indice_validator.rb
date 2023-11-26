module LatestStockPrice
  class IndiceValidator
    class << self
      def validate(indices)
        raise ArgumentError, 'Indices cannot contain commas' if indices.include?(',')
        raise ArgumentError, 'Indices cannot be an array' if indices.is_a?(Array)
      end
    end
  end
end
