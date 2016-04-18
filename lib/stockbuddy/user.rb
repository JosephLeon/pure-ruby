class User
	attr_reader :id, :first_name, :last_name, :cash
	def initialize(args)
		@id = args[:id]
		@first_name = args[:first_name]
		@last_name = args[:last_name]
		@cash = args[:cash]
	end

	def evaluate_stock(ticker)
		StockQuote.new.get_quote(ticker)
	end

	def make_purchase(ticker, amount)
		
	end

	def _list_stocks_owned
		# return stocks owned by this user
	end

end
