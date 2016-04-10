class User
	attr_reader :id, :first_name, :last_name, :cash, :stocks_owned
	def initialize(args)
		@id = args[:id]
		@first_name = args[:first_name]
		@last_name = args[:last_name]
		@cash = args[:cash]
		@stocks_owned = args[:stocks_owned]
	end

	def list_stocks_owned

	end

	def add_stock_to_portfolio

	end

end