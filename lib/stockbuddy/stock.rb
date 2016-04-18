class Stock
	attr_reader :ticker, :price, :revenue, :cost_of_revenue, :eps
	def initialize(args)
		@ticker = args[:ticker]
		@price = args[:price]
		@revenue = args[:revenue]
		@cost_of_revenue = args[:cost_of_revenue]
		@eps = args[:eps]
	end

	def gross_profit
		revenue - cost_of_revenue
	end

	def should_i_buy_you
		if gross_profit > 0 
			puts "Buy"
		else
			puts "Sell"
		end
	end

	def evaluate_eps
		if eps < 0 || eps > 20
			puts "Poor eps rating"
		else
			puts "Good eps rating"
		end
	end

end
