require 'httparty'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class StockfighterAPI
	attr_accessor :api_key, :base_url, :error, :response
	def initialize
		@api_key = "883a422ed6a5e442f7be2b9fbd0bc6269131241e"
		@base_url = "https://api.stockfighter.io/ob/api"
		@error = nil
	end

	def isApiUp
		@response = HTTParty.get(self.base_url + "/heartbeat")
		ok = response.parsed_response["ok"] rescue false
		raise "Oh no the world is on fire!" unless ok
		ok
	end

	def isVenueUp(test_venue)
		@response = HTTParty.get(self.base_url + "/venues/" + test_venue.to_s + "/heartbeat")
		ok = response.parsed_response["ok"] rescue false
		raise "Oh no the world is on fire!" unless ok
		@error = response.parsed_response["error"] rescue false
		ok
	end

	#def getStocks(test_venue)
	#	@response = HTTParty.get(self.base_url + "/venues/" + test_venue.to_s + "/stocks")
	#end

end


