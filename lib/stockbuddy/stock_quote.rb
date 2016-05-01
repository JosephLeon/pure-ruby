require 'rubygems'
require 'nokogiri'
require 'open-uri'

class StockQuote
	@@rndm = Random.new
	BASE_YAHOO_URL = "http://finance.yahoo.com"

	def StockQuote.get_quote(ticker)
		if self.authenticate_ticker(ticker)
			
			stock_page_url = "#{BASE_YAHOO_URL}/q?s=#{ticker}"
			page = Nokogiri::HTML(open(stock_page_url))

			cleaned_ticker = ticker.downcase
			stock_ticker_element = "#yfs_l84_#{cleaned_ticker}"

			# Stock Quote
			stock_quote = {}
			stock_price = page.css(stock_ticker_element).text
			stock_quote["stock_price"] = stock_price

			return stock_quote
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
