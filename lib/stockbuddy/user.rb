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
		total_purchase_price = stock_quote["price"] * shares
		
		if total_purchase_price > self.cash
			return "Not enough funds."
		else
			new_cash_amount = self.cash - total_purchase_price
			self.instance_variable_set(:@cash, new_cash_amount)
			purchase = Purchase.new(
				:user => self.id, 
				:stock_quote => stock_quote, 
				:shares => shares).add_purchase_to_db
			return purchase
		end
	end
end
