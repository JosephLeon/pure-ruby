class Stock
	attr_reader :ticker, :price, :revenue, :cost_of_revenue
	def initialize(ticker, price, revenue, cost_of_revenue)
		@ticker = ticker
		@price = price
		@revenue = revenue
		@cost_of_revenue = cost_of_revenue
	end

	def gross_profit
		revenue - cost_of_revenue
	end

	def should_i_buy_you
		if gross_profit > 0 
			puts "Strong buy"
		end
	end

end

puts Stock.new('MITL', 8.21, 1157700, 543800).gross_profit
puts Stock.new('MITL', 8.21, 1157700, 543800).should_i_buy_you

