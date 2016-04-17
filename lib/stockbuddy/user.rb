require_relative "stock_quote"
# require_relative "purchase"

class User
	attr_reader :id, :first_name, :last_name, :cash
	def initialize(args)
		@id = args[:id]
		@first_name = args[:first_name]
		@last_name = args[:last_name]
		@cash = args[:cash]
	end

	def evaluate_stock
		# send message to stock_quote with ticker and get qoute
		# invoke StockQuote class
	end

	def make_purchase(ticker, amount)
		# @stock_data = StockQuote.get_quote("FAKE")
		# @purchase = Purchase.new(:user => "Bob", :amount => amount, :data => @stock_data)
	end

	def _list_stocks_owned
		# return stocks owned by this user
	end

end

# puts User.make_purchase("FAKE", 20)