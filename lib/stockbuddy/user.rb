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
		stock_quote = self.evaluate_stock(ticker)
		total_purchase = stock_quote["price"] * shares
		if total_purchase > self.cash
			return "Not enough funds."
		else
			purchase = Purchase.new
			return purchase
		end

		# Purchase.new(self.id, quote, shares)
	end

	def _list_stocks_owned
		# return purchases with an id linked to user.id
	end

end
