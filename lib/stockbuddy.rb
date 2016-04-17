require 'stockbuddy/stock'
require 'stockbuddy/user'
require 'stockbuddy/stock_quote'
require 'stockbuddy/purchase'

# puts User.make_purchase("FAKE", 20)

@this_stock = Stock.new(
	:ticker => 'MITL', 
	:price => 8.21,
	:revenue => 1157700,
	:cost_of_revenue => 543800,
	:eps => -0.17)

puts @this_stock.gross_profit
puts @this_stock.should_i_buy_you
puts @this_stock.evaluate_eps

puts StockQuote.new(:ticker => "TICK").get_quote("FAKE")