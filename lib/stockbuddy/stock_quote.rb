class StockQuote

	@tickers = [:SBUX, :WFC, :BP, :NFLX, :FSLR]
	@rndm = Random.new

	def self.get_quote(ticker)
		data = {
			"ticker" => @tickers.sample,
			"price" => (@rndm.rand(5.00..120.00)*100).round / 100.0,
			"eps" => (@rndm.rand(-1.00..25.00)*100).round / 100.0,
			"time" => Time.now.getutc,
		}
		return data
	end

end


class DetailedStockQuote < StockQuote

	def self.get_quote(ticker)
		super
		# super + data[:peg] = (rndm.rand(-1.00..25.00)*100).round / 100.0
	end

end