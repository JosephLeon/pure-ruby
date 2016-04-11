class StockQuote
	attr_reader :ticker
	def initialize(args)
		@ticker = args[:ticker]
	end

	def get_quote(ticker)
		# using ticker hit external api and get data
		# for now we will hardcode return values
		data = {
			"ticker" => "SBUX",
			"price" => "61.04",
			"eps" => "1.63",
			"time" => Time.now.getutc,
		}
		return data
	end
end