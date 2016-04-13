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

	def make_purchase
		# purchase a certain amount of stock
		# invoke Purchase class
	end

	def _list_stocks_owned
		# return stocks owned by this user
	end

end