class User
	attr_reader :id, :first_name, :last_name, :cash, :stocks_owned
	def initialize(args)
		@id = args[:id]
		@first_name = args[:first_name]
		@last_name = args[:last_name]
		@cash = args[:cash]
		@stocks_owned = args[:stocks_owned]
		# @stock = args[:stock]
	end

	def list_stocks_owned
		# return stocks owned by a user
	end

	def add_stock_to_portfolio(stock_data)
		# get snapshot of stock data, save to db referenced to user id
	end

end