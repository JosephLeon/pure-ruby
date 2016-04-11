class StockQuote
	attr_reader :ticker
	def initialize(args)
		@ticker = args[:ticker]
	end

	def get_quote()
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

	def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.count
    all.count
  end
end

puts StockQuote.new(:ticker => "TICK").get_quote