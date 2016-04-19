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

	def make_purchase(ticker, shares)
		# run evaluate_stock(ticker)
		# calculate if shares purchased are less than self.cash
		# Purchase.new(self.id, quote, shares)
	end

	def _list_stocks_owned
		# return purchases with an id linked to user.id
	end

end
