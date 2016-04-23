class StockQuote
	@@rndm = Random.new
	def self.get_quote(ticker)
		tickers = [:SBUX, :WFC, :BP, :NFLX, :FSLR]
		rndm = Random.new

		@data = {
			"ticker" => tickers.sample,
			"price" => (rndm.rand(5.00..120.00)*100).round / 100.0,
			"eps" => (rndm.rand(-1.00..25.00)*100).round / 100.0,
			"time" => Time.now.getutc,
		}
		return @data
	end

end


class DetailedStockQuote < StockQuote

	def self.get_quote(ticker)
		super
		data = super
		data["peg"] = (@@rndm.rand(-1.00..25.00)*100).round / 100.0
		data["dividends"] = (@@rndm.rand(0.00...10.00)*100).round / 100.0
		puts data.inspect
	end

end
