lib = File.expand_path("../lib/", __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'stockbuddy'
  s.version     = '0.0.0'
  s.date        = '2016-04-15'
  s.summary     = "Sample gem for messing with stocks"
  s.description = "A gem for processing stock related actions"
  s.authors     = ["Joseph Leon"]
  s.email       = ''
  # s.files       = ["lib/stockbuddy.rb, lib/stockbuddy/purchase.rb"]
  s.files       = `git ls-files`.split($/)
  # , lib/stockbuddy/stock.rb, lib/stockbuddy/stock_quote.rb, lib/stockbuddy/user.rb
  s.homepage    = ''
  s.license     = 'MIT'
end