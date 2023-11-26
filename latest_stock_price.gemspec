Gem::Specification.new do |spec|
  spec.name          = 'latest_stock_price'
  spec.version       = '0.0.1'
  spec.authors       = ['Miguel Dagatan']
  spec.email         = ['miguel.dagatan@gmail.com']
  spec.summary       = 'Interface to latest stock price endpoint'
  spec.description   = 'Interface to latest stock price endpoint'
  spec.homepage      = 'www.example.com'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
end
