class StockQuote
	@@rndm = Random.new
	def StockQuote.get_quote(ticker)
		if self.authenticate_ticker(ticker)
			tickers = [:SBUX, :WFC, :BP, :NFLX, :FSLR]
			@data = {
				"ticker" => tickers.sample,
				"price" => (@@rndm.rand(5.00..120.00)*100).round / 100.0,
				"eps" => (@@rndm.rand(-1.00..25.00)*100).round / 100.0,
				"time" => Time.now.getutc,
			}
			return @data
		else
			return nil
		end
	end

	private
		def StockQuote.authenticate_ticker(ticker)
			ticker
		end
end


class DetailedStockQuote < StockQuote
	def DetailedStockQuote.get_quote(ticker)
		super
		if super.nil?
			return
		else
			data = super.dup
		end
		data["peg"] = (@@rndm.rand(-1.00..25.00)*100).round / 100.0
		data["dividends"] = (@@rndm.rand(0.00...10.00)*100).round / 100.0
		puts data.inspect
	end
end
