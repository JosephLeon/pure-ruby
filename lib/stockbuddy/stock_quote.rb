class StockQuote
	attr_reader :ticker
	def initialize(args)
		@ticker = args[:ticker]
	end

	def get_quote(ticker)
		# using ticker hit external api and get data
		# for now we will hardcode return values
		tickers = [:SBUX, :WFC, :BP, :NFLX, :FSLR]
		rndm = Random.new
		data = {
			"ticker" => tickers.sample,
			"price" => (rndm.rand(5.00..120.00)*100).round / 100.0,
			"eps" => (rndm.rand(-1.00..25.00)*100).round / 100.0,
			"time" => Time.now.getutc,
		}
		return data
	end

end
