# Stock data, processes and information are just for test purposes.
class Stock
	attr_reader :ticker, :price, :revenue, :cost_of_revenue, :eps
	def initialize(ticker, price, revenue, cost_of_revenue, eps)
		@ticker = ticker
		@price = price
		@revenue = revenue
		@cost_of_revenue = cost_of_revenue
		@eps = eps
	end

	def gross_profit
		revenue - cost_of_revenue
	end

	def should_i_buy_you
		if gross_profit > 0 
			puts "Strong buy"
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

@this_stock = Stock.new('MITL', 8.21, 1157700, 543800, -0.17)

puts @this_stock.gross_profit
puts @this_stock.should_i_buy_you
puts @this_stock.evaluate_eps

