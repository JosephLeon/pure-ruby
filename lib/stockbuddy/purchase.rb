class Purchase
	attr_reader :user, :stock_quote, :shares
	def initialize(args)
		@user = args[:user]
		@stock_quote = args[:stock_quote]
		@shares = args[:shares]
	end

	def add_purchase_to_db
		puts "Added purchase to db"
	end

end